
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int work; } ;


 int cancel_delayed_work_sync (int *) ;

void dmz_suspend_reclaim(struct dmz_reclaim *zrc)
{
 cancel_delayed_work_sync(&zrc->work);
}
