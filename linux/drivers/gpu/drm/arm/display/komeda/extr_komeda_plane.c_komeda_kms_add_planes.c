
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int n_layers; int * layers; } ;
struct komeda_kms_dev {int dummy; } ;
struct komeda_dev {int n_pipelines; struct komeda_pipeline** pipelines; } ;


 int komeda_plane_add (struct komeda_kms_dev*,int ) ;

int komeda_kms_add_planes(struct komeda_kms_dev *kms, struct komeda_dev *mdev)
{
 struct komeda_pipeline *pipe;
 int i, j, err;

 for (i = 0; i < mdev->n_pipelines; i++) {
  pipe = mdev->pipelines[i];

  for (j = 0; j < pipe->n_layers; j++) {
   err = komeda_plane_add(kms, pipe->layers[j]);
   if (err)
    return err;
  }
 }

 return 0;
}
