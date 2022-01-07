
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int start; scalar_t__ active; int total; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;
typedef int ktime_t ;


 int ktime_add (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;

__attribute__((used)) static ktime_t __intel_engine_get_busy_time(struct intel_engine_cs *engine)
{
 ktime_t total = engine->stats.total;





 if (engine->stats.active)
  total = ktime_add(total,
      ktime_sub(ktime_get(), engine->stats.start));

 return total;
}
