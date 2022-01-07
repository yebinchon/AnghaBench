
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_6__ {int kobj; } ;
struct cache_accounting {TYPE_1__ day; TYPE_4__ hour; TYPE_3__ five_minute; TYPE_2__ total; } ;


 int kobject_add (int *,struct kobject*,char*) ;

int bch_cache_accounting_add_kobjs(struct cache_accounting *acc,
       struct kobject *parent)
{
 int ret = kobject_add(&acc->total.kobj, parent,
         "stats_total");
 ret = ret ?: kobject_add(&acc->five_minute.kobj, parent,
     "stats_five_minute");
 ret = ret ?: kobject_add(&acc->hour.kobj, parent,
     "stats_hour");
 ret = ret ?: kobject_add(&acc->day.kobj, parent,
     "stats_day");
 return ret;
}
