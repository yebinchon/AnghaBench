
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct closure {int dummy; } ;
struct TYPE_11__ {scalar_t__ expires; } ;
struct TYPE_9__ {int kobj; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_10__ {int kobj; } ;
struct cache_accounting {TYPE_5__ timer; int cl; TYPE_3__ day; TYPE_2__ hour; TYPE_1__ five_minute; TYPE_4__ total; } ;


 scalar_t__ accounting_delay ;
 int add_timer (TYPE_5__*) ;
 int bch_stats_ktype ;
 int closure_init (int *,struct closure*) ;
 scalar_t__ jiffies ;
 int kobject_init (int *,int *) ;
 int scale_accounting ;
 int timer_setup (TYPE_5__*,int ,int ) ;

void bch_cache_accounting_init(struct cache_accounting *acc,
          struct closure *parent)
{
 kobject_init(&acc->total.kobj, &bch_stats_ktype);
 kobject_init(&acc->five_minute.kobj, &bch_stats_ktype);
 kobject_init(&acc->hour.kobj, &bch_stats_ktype);
 kobject_init(&acc->day.kobj, &bch_stats_ktype);

 closure_init(&acc->cl, parent);
 timer_setup(&acc->timer, scale_accounting, 0);
 acc->timer.expires = jiffies + accounting_delay;
 add_timer(&acc->timer);
}
