
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_wr_v0 {int size; int data; int addr; int version; } ;


 int EINVAL ;
 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_wr_v0,int ,int ,int) ;
 int nvkm_object_wr08 (struct nvkm_object*,int ,int ) ;
 int nvkm_object_wr16 (struct nvkm_object*,int ,int ) ;
 int nvkm_object_wr32 (struct nvkm_object*,int ,int ) ;

__attribute__((used)) static int
nvkm_ioctl_wr(struct nvkm_client *client,
       struct nvkm_object *object, void *data, u32 size)
{
 union {
  struct nvif_ioctl_wr_v0 v0;
 } *args = data;
 int ret = -ENOSYS;

 nvif_ioctl(object, "wr size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object,
      "wr vers %d size %d addr %016llx data %08x\n",
      args->v0.version, args->v0.size, args->v0.addr,
      args->v0.data);
 } else
  return ret;

 switch (args->v0.size) {
 case 1: return nvkm_object_wr08(object, args->v0.addr, args->v0.data);
 case 2: return nvkm_object_wr16(object, args->v0.addr, args->v0.data);
 case 4: return nvkm_object_wr32(object, args->v0.addr, args->v0.data);
 default:
  break;
 }

 return -EINVAL;
}
