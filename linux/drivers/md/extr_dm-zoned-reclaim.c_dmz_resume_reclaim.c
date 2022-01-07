
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_reclaim {int work; int wq; } ;


 int DMZ_IDLE_PERIOD ;
 int queue_delayed_work (int ,int *,int ) ;

void dmz_resume_reclaim(struct dmz_reclaim *zrc)
{
 queue_delayed_work(zrc->wq, &zrc->work, DMZ_IDLE_PERIOD);
}
