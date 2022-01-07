
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_client {int dummy; } ;


 int EINVAL ;

 struct nvkm_client* nvkm_client (struct nvkm_object*) ;
 int nvkm_client_mthd_devlist (struct nvkm_client*,void*,int) ;

__attribute__((used)) static int
nvkm_client_mthd(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
 struct nvkm_client *client = nvkm_client(object);
 switch (mthd) {
 case 128:
  return nvkm_client_mthd_devlist(client, data, size);
 default:
  break;
 }
 return -EINVAL;
}
