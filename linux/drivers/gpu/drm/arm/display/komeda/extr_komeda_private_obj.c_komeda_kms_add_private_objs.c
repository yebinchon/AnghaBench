
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int n_layers; int n_scalers; int ctrlr; int improc; scalar_t__ merger; scalar_t__ splitter; int compiz; int * scalers; scalar_t__ wb_layer; scalar_t__* layers; } ;
struct komeda_kms_dev {int dummy; } ;
struct komeda_dev {int n_pipelines; struct komeda_pipeline** pipelines; } ;


 int komeda_compiz_obj_add (struct komeda_kms_dev*,int ) ;
 int komeda_improc_obj_add (struct komeda_kms_dev*,int ) ;
 int komeda_layer_obj_add (struct komeda_kms_dev*,scalar_t__) ;
 int komeda_merger_obj_add (struct komeda_kms_dev*,scalar_t__) ;
 int komeda_pipeline_obj_add (struct komeda_kms_dev*,struct komeda_pipeline*) ;
 int komeda_scaler_obj_add (struct komeda_kms_dev*,int ) ;
 int komeda_splitter_obj_add (struct komeda_kms_dev*,scalar_t__) ;
 int komeda_timing_ctrlr_obj_add (struct komeda_kms_dev*,int ) ;

int komeda_kms_add_private_objs(struct komeda_kms_dev *kms,
    struct komeda_dev *mdev)
{
 struct komeda_pipeline *pipe;
 int i, j, err;

 for (i = 0; i < mdev->n_pipelines; i++) {
  pipe = mdev->pipelines[i];

  err = komeda_pipeline_obj_add(kms, pipe);
  if (err)
   return err;

  for (j = 0; j < pipe->n_layers; j++) {
   err = komeda_layer_obj_add(kms, pipe->layers[j]);
   if (err)
    return err;
  }

  if (pipe->wb_layer) {
   err = komeda_layer_obj_add(kms, pipe->wb_layer);
   if (err)
    return err;
  }

  for (j = 0; j < pipe->n_scalers; j++) {
   err = komeda_scaler_obj_add(kms, pipe->scalers[j]);
   if (err)
    return err;
  }

  err = komeda_compiz_obj_add(kms, pipe->compiz);
  if (err)
   return err;

  if (pipe->splitter) {
   err = komeda_splitter_obj_add(kms, pipe->splitter);
   if (err)
    return err;
  }

  if (pipe->merger) {
   err = komeda_merger_obj_add(kms, pipe->merger);
   if (err)
    return err;
  }

  err = komeda_improc_obj_add(kms, pipe->improc);
  if (err)
   return err;

  err = komeda_timing_ctrlr_obj_add(kms, pipe->ctrlr);
  if (err)
   return err;
 }

 return 0;
}
