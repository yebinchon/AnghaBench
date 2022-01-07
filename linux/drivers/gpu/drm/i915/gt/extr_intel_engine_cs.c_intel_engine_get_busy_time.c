
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ stats; } ;
typedef int ktime_t ;


 int __intel_engine_get_busy_time (struct intel_engine_cs*) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

ktime_t intel_engine_get_busy_time(struct intel_engine_cs *engine)
{
 unsigned int seq;
 ktime_t total;

 do {
  seq = read_seqbegin(&engine->stats.lock);
  total = __intel_engine_get_busy_time(engine);
 } while (read_seqretry(&engine->stats.lock, seq));

 return total;
}
