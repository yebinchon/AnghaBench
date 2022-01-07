
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nvif_sclass {scalar_t__ const oclass; } ;
struct nvif_object {int dummy; } ;
struct nvif_device {int dummy; } ;
struct nv50_chan {int user; struct nvif_device* device; } ;
typedef scalar_t__ s32 ;


 int ENOSYS ;
 int nvif_object_init (struct nvif_object*,int ,scalar_t__ const,void*,int ,int *) ;
 int nvif_object_map (int *,int *,int ) ;
 int nvif_object_sclass_get (struct nvif_object*,struct nvif_sclass**) ;
 int nvif_object_sclass_put (struct nvif_sclass**) ;

__attribute__((used)) static int
nv50_chan_create(struct nvif_device *device, struct nvif_object *disp,
   const s32 *oclass, u8 head, void *data, u32 size,
   struct nv50_chan *chan)
{
 struct nvif_sclass *sclass;
 int ret, i, n;

 chan->device = device;

 ret = n = nvif_object_sclass_get(disp, &sclass);
 if (ret < 0)
  return ret;

 while (oclass[0]) {
  for (i = 0; i < n; i++) {
   if (sclass[i].oclass == oclass[0]) {
    ret = nvif_object_init(disp, 0, oclass[0],
             data, size, &chan->user);
    if (ret == 0)
     nvif_object_map(&chan->user, ((void*)0), 0);
    nvif_object_sclass_put(&sclass);
    return ret;
   }
  }
  oclass++;
 }

 nvif_object_sclass_put(&sclass);
 return -ENOSYS;
}
