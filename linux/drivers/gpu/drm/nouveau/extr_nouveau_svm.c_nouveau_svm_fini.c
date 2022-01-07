
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm {int dummy; } ;
struct nouveau_drm {struct nouveau_svm* svm; } ;


 int kfree (struct nouveau_svm*) ;
 int nouveau_svm_fault_buffer_dtor (struct nouveau_svm*,int ) ;

void
nouveau_svm_fini(struct nouveau_drm *drm)
{
 struct nouveau_svm *svm = drm->svm;
 if (svm) {
  nouveau_svm_fault_buffer_dtor(svm, 0);
  kfree(drm->svm);
  drm->svm = ((void*)0);
 }
}
