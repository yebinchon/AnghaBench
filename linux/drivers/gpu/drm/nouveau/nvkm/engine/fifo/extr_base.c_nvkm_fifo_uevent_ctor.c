
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_object {int dummy; } ;
struct nvkm_notify {int size; int types; scalar_t__ index; } ;
struct nvif_notify_uevent_req {int dummy; } ;
struct nvif_notify_uevent_rep {int dummy; } ;


 int ENOSYS ;
 int nvif_unvers (int,void**,int *,struct nvif_notify_uevent_req) ;

__attribute__((used)) static int
nvkm_fifo_uevent_ctor(struct nvkm_object *object, void *data, u32 size,
        struct nvkm_notify *notify)
{
 union {
  struct nvif_notify_uevent_req none;
 } *req = data;
 int ret = -ENOSYS;

 if (!(ret = nvif_unvers(ret, &data, &size, req->none))) {
  notify->size = sizeof(struct nvif_notify_uevent_rep);
  notify->types = 1;
  notify->index = 0;
 }

 return ret;
}
