
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_mclass {int oclass; int member_1; int member_0; } ;
struct nouveau_svm {int inst; int mutex; struct nouveau_drm* drm; } ;
struct TYPE_4__ {scalar_t__ family; } ;
struct TYPE_5__ {int object; TYPE_1__ info; } ;
struct TYPE_6__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; struct nouveau_svm* svm; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;

 scalar_t__ NV_DEVICE_INFO_V0_PASCAL ;
 int SVM_DBG (struct nouveau_svm*,char*) ;

 struct nouveau_svm* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int nouveau_svm_fault_buffer_ctor (struct nouveau_svm*,int ,int ) ;
 int nouveau_svm_fini (struct nouveau_drm*) ;
 int nvif_mclass (int *,struct nvif_mclass const*) ;

void
nouveau_svm_init(struct nouveau_drm *drm)
{
 static const struct nvif_mclass buffers[] = {
  { 128, 0 },
  { 129, 0 },
  {}
 };
 struct nouveau_svm *svm;
 int ret;





 if (drm->client.device.info.family > NV_DEVICE_INFO_V0_PASCAL)
  return;

 if (!(drm->svm = svm = kzalloc(sizeof(*drm->svm), GFP_KERNEL)))
  return;

 drm->svm->drm = drm;
 mutex_init(&drm->svm->mutex);
 INIT_LIST_HEAD(&drm->svm->inst);

 ret = nvif_mclass(&drm->client.device.object, buffers);
 if (ret < 0) {
  SVM_DBG(svm, "No supported fault buffer class");
  nouveau_svm_fini(drm);
  return;
 }

 ret = nouveau_svm_fault_buffer_ctor(svm, buffers[ret].oclass, 0);
 if (ret) {
  nouveau_svm_fini(drm);
  return;
 }

 SVM_DBG(svm, "Initialised");
}
