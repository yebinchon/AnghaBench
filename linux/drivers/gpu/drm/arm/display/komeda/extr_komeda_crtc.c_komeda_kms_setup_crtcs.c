
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct komeda_pipeline {int id; } ;
struct komeda_kms_dev {size_t n_crtcs; struct komeda_crtc* crtcs; } ;
struct komeda_dev {int n_pipelines; struct komeda_pipeline** pipelines; } ;
struct komeda_crtc {TYPE_1__* slave; struct komeda_pipeline* master; } ;
struct TYPE_2__ {int id; } ;


 int DRM_INFO (char*,size_t,int ,char*) ;
 TYPE_1__* komeda_pipeline_get_slave (struct komeda_pipeline*) ;
 int sprintf (char*,char*,...) ;

int komeda_kms_setup_crtcs(struct komeda_kms_dev *kms,
      struct komeda_dev *mdev)
{
 struct komeda_crtc *crtc;
 struct komeda_pipeline *master;
 char str[16];
 int i;

 kms->n_crtcs = 0;

 for (i = 0; i < mdev->n_pipelines; i++) {
  crtc = &kms->crtcs[kms->n_crtcs];
  master = mdev->pipelines[i];

  crtc->master = master;
  crtc->slave = komeda_pipeline_get_slave(master);

  if (crtc->slave)
   sprintf(str, "pipe-%d", crtc->slave->id);
  else
   sprintf(str, "None");

  DRM_INFO("CRTC-%d: master(pipe-%d) slave(%s).\n",
    kms->n_crtcs, master->id, str);

  kms->n_crtcs++;
 }

 return 0;
}
