
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int last_head; int last_ring; int acthd; } ;
struct intel_engine_cs {TYPE_1__ hangcheck; } ;
struct hangcheck {int head; int ring; int acthd; } ;



__attribute__((used)) static void hangcheck_store_sample(struct intel_engine_cs *engine,
       const struct hangcheck *hc)
{
 engine->hangcheck.acthd = hc->acthd;
 engine->hangcheck.last_ring = hc->ring;
 engine->hangcheck.last_head = hc->head;
}
