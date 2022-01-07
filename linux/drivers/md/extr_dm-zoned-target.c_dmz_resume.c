
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_target {int reclaim; int flush_work; int flush_wq; } ;
struct dm_target {struct dmz_target* private; } ;


 int DMZ_FLUSH_PERIOD ;
 int dmz_resume_reclaim (int ) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void dmz_resume(struct dm_target *ti)
{
 struct dmz_target *dmz = ti->private;

 queue_delayed_work(dmz->flush_wq, &dmz->flush_work, DMZ_FLUSH_PERIOD);
 dmz_resume_reclaim(dmz->reclaim);
}
