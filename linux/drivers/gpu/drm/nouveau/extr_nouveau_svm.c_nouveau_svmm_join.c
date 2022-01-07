
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct nouveau_svmm {TYPE_4__* vmm; } ;
struct nouveau_ivmm {int head; int inst; struct nouveau_svmm* svmm; } ;
struct TYPE_8__ {TYPE_3__* cli; } ;
struct TYPE_7__ {TYPE_2__* drm; } ;
struct TYPE_6__ {TYPE_1__* svm; } ;
struct TYPE_5__ {int mutex; int inst; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nouveau_ivmm* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
nouveau_svmm_join(struct nouveau_svmm *svmm, u64 inst)
{
 struct nouveau_ivmm *ivmm;
 if (svmm) {
  if (!(ivmm = kmalloc(sizeof(*ivmm), GFP_KERNEL)))
   return -ENOMEM;
  ivmm->svmm = svmm;
  ivmm->inst = inst;

  mutex_lock(&svmm->vmm->cli->drm->svm->mutex);
  list_add(&ivmm->head, &svmm->vmm->cli->drm->svm->inst);
  mutex_unlock(&svmm->vmm->cli->drm->svm->mutex);
 }
 return 0;
}
