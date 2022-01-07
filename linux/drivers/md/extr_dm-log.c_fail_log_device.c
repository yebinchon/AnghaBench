
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct log_c {int log_dev_failed; TYPE_1__* ti; } ;
struct TYPE_2__ {int table; } ;


 int dm_table_event (int ) ;

__attribute__((used)) static void fail_log_device(struct log_c *lc)
{
 if (lc->log_dev_failed)
  return;

 lc->log_dev_failed = 1;
 dm_table_event(lc->ti->table);
}
