
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;
struct nvif_ioctl_unmap {int dummy; } ;


 int ENOSYS ;
 int nvif_ioctl (struct nvkm_object*,char*,...) ;
 int nvif_unvers (int,void**,int *,struct nvif_ioctl_unmap) ;
 int nvkm_object_unmap (struct nvkm_object*) ;

__attribute__((used)) static int
nvkm_ioctl_unmap(struct nvkm_client *client,
   struct nvkm_object *object, void *data, u32 size)
{
 union {
  struct nvif_ioctl_unmap none;
 } *args = data;
 int ret = -ENOSYS;

 nvif_ioctl(object, "unmap size %d\n", size);
 if (!(ret = nvif_unvers(ret, &data, &size, args->none))) {
  nvif_ioctl(object, "unmap\n");
  ret = nvkm_object_unmap(object);
 }

 return ret;
}
