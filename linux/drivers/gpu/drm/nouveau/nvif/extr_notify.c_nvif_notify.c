
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvif_notify_rep_v0 {scalar_t__ version; int route; scalar_t__ token; } ;
struct nvif_notify {int size; int * data; int work; int flags; int putcnt; TYPE_1__* object; } ;
struct nvif_client {TYPE_2__* driver; } ;
struct TYPE_4__ {int keep; } ;
struct TYPE_3__ {struct nvif_client* client; } ;


 int NVIF_NOTIFY_DROP ;
 int NVIF_NOTIFY_WORK ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc (int *) ;
 int memcpy (void*,void const*,int) ;
 int nvif_notify_func (struct nvif_notify*,int ) ;
 int schedule_work (int *) ;
 scalar_t__ test_bit (int ,int *) ;

int
nvif_notify(const void *header, u32 length, const void *data, u32 size)
{
 struct nvif_notify *notify = ((void*)0);
 const union {
  struct nvif_notify_rep_v0 v0;
 } *args = header;
 int ret = NVIF_NOTIFY_DROP;

 if (length == sizeof(args->v0) && args->v0.version == 0) {
  if (WARN_ON(args->v0.route))
   return NVIF_NOTIFY_DROP;
  notify = (void *)(unsigned long)args->v0.token;
 }

 if (!WARN_ON(notify == ((void*)0))) {
  struct nvif_client *client = notify->object->client;
  if (!WARN_ON(notify->size != size)) {
   atomic_inc(&notify->putcnt);
   if (test_bit(NVIF_NOTIFY_WORK, &notify->flags)) {
    memcpy((void *)notify->data, data, size);
    schedule_work(&notify->work);
    return NVIF_NOTIFY_DROP;
   }
   notify->data = data;
   ret = nvif_notify_func(notify, client->driver->keep);
   notify->data = ((void*)0);
  }
 }

 return ret;
}
