
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_svmm {TYPE_3__* vmm; } ;
struct nouveau_ivmm {int head; } ;
struct TYPE_8__ {int mutex; } ;
struct TYPE_7__ {TYPE_2__* cli; } ;
struct TYPE_6__ {TYPE_1__* drm; } ;
struct TYPE_5__ {TYPE_4__* svm; } ;


 int kfree (struct nouveau_ivmm*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nouveau_ivmm* nouveau_ivmm_find (TYPE_4__*,int ) ;

void
nouveau_svmm_part(struct nouveau_svmm *svmm, u64 inst)
{
 struct nouveau_ivmm *ivmm;
 if (svmm) {
  mutex_lock(&svmm->vmm->cli->drm->svm->mutex);
  ivmm = nouveau_ivmm_find(svmm->vmm->cli->drm->svm, inst);
  if (ivmm) {
   list_del(&ivmm->head);
   kfree(ivmm);
  }
  mutex_unlock(&svmm->vmm->cli->drm->svm->mutex);
 }
}
