
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_notify {scalar_t__ block; int index; int types; int event; } ;


 int nvkm_event_get (int ,int ,int ) ;

__attribute__((used)) static inline void
nvkm_notify_get_locked(struct nvkm_notify *notify)
{
 if (--notify->block == 0)
  nvkm_event_get(notify->event, notify->types, notify->index);
}
