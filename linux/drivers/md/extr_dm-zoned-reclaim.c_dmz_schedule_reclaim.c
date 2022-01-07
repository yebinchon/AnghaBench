
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int work; int wq; } ;


 scalar_t__ dmz_should_reclaim (struct dmz_reclaim*) ;
 int mod_delayed_work (int ,int *,int ) ;

void dmz_schedule_reclaim(struct dmz_reclaim *zrc)
{
 if (dmz_should_reclaim(zrc))
  mod_delayed_work(zrc->wq, &zrc->work, 0);
}
