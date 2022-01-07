
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_set {int congested_last_us; int congested; int congested_write_threshold_us; int congested_read_threshold_us; } ;


 scalar_t__ CONGESTED_MAX ;
 scalar_t__ atomic_read (int *) ;
 int fract_exp_two (int,int) ;
 int get_random_u32 () ;
 scalar_t__ hweight32 (int ) ;
 int local_clock_us () ;

unsigned int bch_get_congested(const struct cache_set *c)
{
 int i;

 if (!c->congested_read_threshold_us &&
     !c->congested_write_threshold_us)
  return 0;

 i = (local_clock_us() - c->congested_last_us) / 1024;
 if (i < 0)
  return 0;

 i += atomic_read(&c->congested);
 if (i >= 0)
  return 0;

 i += CONGESTED_MAX;

 if (i > 0)
  i = fract_exp_two(i, 6);

 i -= hweight32(get_random_u32());

 return i > 0 ? i : 1;
}
