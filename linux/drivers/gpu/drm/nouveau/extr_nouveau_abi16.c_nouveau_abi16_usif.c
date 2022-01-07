
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvif_ioctl_v0 {int type; unsigned long long token; void* owner; void* object; } ;
struct nouveau_abi16_chan {TYPE_1__* chan; } ;
struct TYPE_4__ {int object; } ;
struct nouveau_abi16 {TYPE_2__ device; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {int user; } ;


 int EACCES ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;


 void* NVIF_IOCTL_V0_OWNER_ANY ;

 struct nouveau_abi16* nouveau_abi16 (struct drm_file*) ;
 struct nouveau_abi16_chan* nouveau_abi16_chan (struct nouveau_abi16*,unsigned long long) ;
 void* nvif_handle (int *) ;
 int nvif_unpack (int,void**,int *,struct nvif_ioctl_v0,int ,int ,int) ;

int
nouveau_abi16_usif(struct drm_file *file_priv, void *data, u32 size)
{
 union {
  struct nvif_ioctl_v0 v0;
 } *args = data;
 struct nouveau_abi16_chan *chan;
 struct nouveau_abi16 *abi16;
 int ret = -ENOSYS;

 if (!(ret = nvif_unpack(ret, &data, &size, args->v0, 0, 0, 1))) {
  switch (args->v0.type) {
  case 129:
  case 130:
  case 128:
   break;
  default:
   return -EACCES;
  }
 } else
  return ret;

 if (!(abi16 = nouveau_abi16(file_priv)))
  return -ENOMEM;

 if (args->v0.token != ~0ULL) {
  if (!(chan = nouveau_abi16_chan(abi16, args->v0.token)))
   return -EINVAL;
  args->v0.object = nvif_handle(&chan->chan->user);
  args->v0.owner = NVIF_IOCTL_V0_OWNER_ANY;
  return 0;
 }

 args->v0.object = nvif_handle(&abi16->device.object);
 args->v0.owner = NVIF_IOCTL_V0_OWNER_ANY;
 return 0;
}
