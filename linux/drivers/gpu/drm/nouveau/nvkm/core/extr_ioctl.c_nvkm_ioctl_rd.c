
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_rd_v0 {int size; int data; int addr; int version; } ;


 int EINVAL ;
 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,int ,...) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_rd_v0,int ,int ,int) ;
 int nvkm_object_rd08 (struct nvkm_object*,int ,int *) ;
 int nvkm_object_rd16 (struct nvkm_object*,int ,int *) ;
 int nvkm_object_rd32 (struct nvkm_object*,int ,int *) ;

__attribute__((used)) static int
nvkm_ioctl_rd(struct nvkm_client *client,
       struct nvkm_object *object, void *data, u32 size)
{
 union {
  struct nvif_ioctl_rd_v0 v0;
 } *args = data;
 union {
  u8 b08;
  u16 b16;
  u32 b32;
 } v;
 int ret = -ENOSYS;

 nvif_ioctl(object, "rd size %d\n", size);
 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 0))) {
  nvif_ioctl(object, "rd vers %d size %d addr %016llx\n",
      args->v0.version, args->v0.size, args->v0.addr);
  switch (args->v0.size) {
  case 1:
   ret = nvkm_object_rd08(object, args->v0.addr, &v.b08);
   args->v0.data = v.b08;
   break;
  case 2:
   ret = nvkm_object_rd16(object, args->v0.addr, &v.b16);
   args->v0.data = v.b16;
   break;
  case 4:
   ret = nvkm_object_rd32(object, args->v0.addr, &v.b32);
   args->v0.data = v.b32;
   break;
  default:
   ret = -EINVAL;
   break;
  }
 }

 return ret;
}
