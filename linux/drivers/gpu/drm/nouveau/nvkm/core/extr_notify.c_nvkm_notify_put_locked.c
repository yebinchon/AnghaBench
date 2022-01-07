
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_notify {int index; int types; int event; int block; } ;


 int nvkm_event_put (int ,int ,int ) ;

__attribute__((used)) static inline void
nvkm_notify_put_locked(struct nvkm_notify *notify)
{
 if (notify->block++ == 0)
  nvkm_event_put(notify->event, notify->types, notify->index);
}
