
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore_forcewake_domain {int mask; int timer; int wake_count; TYPE_1__* uncore; } ;
struct TYPE_2__ {int fw_domains_timer; } ;


 int GEM_BUG_ON (int) ;
 int HRTIMER_MODE_REL ;
 int NSEC_PER_MSEC ;
 int hrtimer_start_range_ns (int *,int ,int ,int ) ;

__attribute__((used)) static inline void
fw_domain_arm_timer(struct intel_uncore_forcewake_domain *d)
{
 GEM_BUG_ON(d->uncore->fw_domains_timer & d->mask);
 d->uncore->fw_domains_timer |= d->mask;
 d->wake_count++;
 hrtimer_start_range_ns(&d->timer,
          NSEC_PER_MSEC,
          NSEC_PER_MSEC,
          HRTIMER_MODE_REL);
}
