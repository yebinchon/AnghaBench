
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_kms_dev {int n_crtcs; int * crtcs; } ;
struct komeda_dev {int dummy; } ;


 int komeda_crtc_add (struct komeda_kms_dev*,int *) ;

int komeda_kms_add_crtcs(struct komeda_kms_dev *kms, struct komeda_dev *mdev)
{
 int i, err;

 for (i = 0; i < kms->n_crtcs; i++) {
  err = komeda_crtc_add(kms, &kms->crtcs[i]);
  if (err)
   return err;
 }

 return 0;
}
