
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_fault_buffer {struct nvkm_object object; int put; int get; int entries; } ;
struct nvkm_fault {TYPE_2__* func; struct nvkm_fault_buffer** buffer; } ;
struct nvkm_device {struct nvkm_fault* fault; } ;
struct nvif_clb069_v0 {int put; int get; int entries; } ;
struct TYPE_3__ {size_t rp; } ;
struct TYPE_4__ {TYPE_1__ user; } ;


 int ENOSYS ;
 int nvif_unpack (int,void**,int *,struct nvif_clb069_v0,int ,int ,int) ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,struct nvkm_object*) ;
 int nvkm_ufault ;

int
nvkm_ufault_new(struct nvkm_device *device, const struct nvkm_oclass *oclass,
  void *argv, u32 argc, struct nvkm_object **pobject)
{
 union {
  struct nvif_clb069_v0 v0;
 } *args = argv;
 struct nvkm_fault *fault = device->fault;
 struct nvkm_fault_buffer *buffer = fault->buffer[fault->func->user.rp];
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &argv, &argc, args->v0, 0, 0, 0))) {
  args->v0.entries = buffer->entries;
  args->v0.get = buffer->get;
  args->v0.put = buffer->put;
 } else
  return ret;

 nvkm_object_ctor(&nvkm_ufault, oclass, &buffer->object);
 *pobject = &buffer->object;
 return 0;
}
