
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_event {int * refs; } ;


 int kfree (int *) ;

void
nvkm_event_fini(struct nvkm_event *event)
{
 if (event->refs) {
  kfree(event->refs);
  event->refs = ((void*)0);
 }
}
