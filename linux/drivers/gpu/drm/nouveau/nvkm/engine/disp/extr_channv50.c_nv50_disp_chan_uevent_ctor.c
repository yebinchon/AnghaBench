
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {int size; int types; int index; } ;
struct nvif_notify_uevent_req {int dummy; } ;
struct nvif_notify_uevent_rep {int dummy; } ;
struct TYPE_2__ {int user; } ;
struct nv50_disp_chan {TYPE_1__ chid; } ;


 int ENOSYS ;
 struct nv50_disp_chan* nv50_disp_chan (struct nvkm_object*) ;
 int nvif_unvers (int,void**,int *,struct nvif_notify_uevent_req) ;

int
nv50_disp_chan_uevent_ctor(struct nvkm_object *object, void *data, u32 size,
      struct nvkm_notify *notify)
{
 struct nv50_disp_chan *chan = nv50_disp_chan(object);
 union {
  struct nvif_notify_uevent_req none;
 } *args = data;
 int ret = -ENOSYS;

 if (!(ret = nvif_unvers(ret, &data, &size, args->none))) {
  notify->size = sizeof(struct nvif_notify_uevent_rep);
  notify->types = 1;
  notify->index = chan->chid.user;
  return 0;
 }

 return ret;
}
