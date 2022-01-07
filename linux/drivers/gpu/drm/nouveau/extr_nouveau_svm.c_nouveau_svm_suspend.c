
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_svm {int dummy; } ;
struct nouveau_drm {struct nouveau_svm* svm; } ;


 int nouveau_svm_fault_buffer_fini (struct nouveau_svm*,int ) ;

void
nouveau_svm_suspend(struct nouveau_drm *drm)
{
 struct nouveau_svm *svm = drm->svm;
 if (svm)
  nouveau_svm_fault_buffer_fini(svm, 0);
}
