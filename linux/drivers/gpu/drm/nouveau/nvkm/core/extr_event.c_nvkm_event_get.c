
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_event {int* refs; int types_nr; TYPE_1__* func; int refs_lock; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_event*,int,int) ;} ;


 int __ffs (int) ;
 int assert_spin_locked (int *) ;
 int stub1 (struct nvkm_event*,int,int) ;

void
nvkm_event_get(struct nvkm_event *event, u32 types, int index)
{
 assert_spin_locked(&event->refs_lock);
 while (types) {
  int type = __ffs(types); types &= ~(1 << type);
  if (++event->refs[index * event->types_nr + type] == 1) {
   if (event->func->init)
    event->func->init(event, 1 << type, index);
  }
 }
}
