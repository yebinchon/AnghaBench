
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_object {int dummy; } ;
struct nouveau_svm_fault_buffer {int notify; void* put; void* get; int putaddr; int getaddr; } ;
struct nouveau_svm {TYPE_3__* drm; struct nouveau_svm_fault_buffer* buffer; } ;
struct TYPE_4__ {struct nvif_object object; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ client; } ;


 int SVM_DBG (struct nouveau_svm*,char*,void*,void*) ;
 int nvif_notify_get (int *) ;
 void* nvif_rd32 (struct nvif_object*,int ) ;

__attribute__((used)) static int
nouveau_svm_fault_buffer_init(struct nouveau_svm *svm, int id)
{
 struct nouveau_svm_fault_buffer *buffer = &svm->buffer[id];
 struct nvif_object *device = &svm->drm->client.device.object;
 buffer->get = nvif_rd32(device, buffer->getaddr);
 buffer->put = nvif_rd32(device, buffer->putaddr);
 SVM_DBG(svm, "get %08x put %08x (init)", buffer->get, buffer->put);
 return nvif_notify_get(&buffer->notify);
}
