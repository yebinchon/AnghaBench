
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {int kobj; } ;
struct TYPE_5__ {int kobj; } ;
struct cache_accounting {int cl; int timer; int closing; TYPE_4__ day; TYPE_3__ hour; TYPE_2__ five_minute; TYPE_1__ total; } ;


 int atomic_set (int *,int) ;
 int closure_return (int *) ;
 scalar_t__ del_timer_sync (int *) ;
 int kobject_put (int *) ;

void bch_cache_accounting_destroy(struct cache_accounting *acc)
{
 kobject_put(&acc->total.kobj);
 kobject_put(&acc->five_minute.kobj);
 kobject_put(&acc->hour.kobj);
 kobject_put(&acc->day.kobj);

 atomic_set(&acc->closing, 1);
 if (del_timer_sync(&acc->timer))
  closure_return(&acc->cl);
}
