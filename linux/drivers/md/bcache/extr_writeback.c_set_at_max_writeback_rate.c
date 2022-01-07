
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rate; } ;
struct cached_dev {scalar_t__ writeback_rate_change; scalar_t__ writeback_rate_integral_scaled; scalar_t__ writeback_rate_proportional; TYPE_1__ writeback_rate; } ;
struct cache_set {int at_max_writeback_rate; int attached_dev_nr; int idle_counter; int gc_mark_valid; } ;


 int INT_MAX ;
 int atomic_inc_return (int *) ;
 int atomic_long_set (int *,int ) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;

__attribute__((used)) static bool set_at_max_writeback_rate(struct cache_set *c,
           struct cached_dev *dc)
{

 if (!c->gc_mark_valid)
  return 0;
 if (atomic_inc_return(&c->idle_counter) <
     atomic_read(&c->attached_dev_nr) * 6)
  return 0;

 if (atomic_read(&c->at_max_writeback_rate) != 1)
  atomic_set(&c->at_max_writeback_rate, 1);

 atomic_long_set(&dc->writeback_rate.rate, INT_MAX);


 dc->writeback_rate_proportional = 0;
 dc->writeback_rate_integral_scaled = 0;
 dc->writeback_rate_change = 0;







 if ((atomic_read(&c->idle_counter) <
      atomic_read(&c->attached_dev_nr) * 6) ||
     !atomic_read(&c->at_max_writeback_rate))
  return 0;

 return 1;
}
