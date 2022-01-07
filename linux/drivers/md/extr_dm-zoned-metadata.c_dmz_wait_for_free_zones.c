
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmz_metadata {int free_wq; } ;


 int DEFINE_WAIT (int ) ;
 int HZ ;
 int TASK_UNINTERRUPTIBLE ;
 int dmz_lock_map (struct dmz_metadata*) ;
 int dmz_lock_metadata (struct dmz_metadata*) ;
 int dmz_unlock_map (struct dmz_metadata*) ;
 int dmz_unlock_metadata (struct dmz_metadata*) ;
 int finish_wait (int *,int *) ;
 int io_schedule_timeout (int ) ;
 int prepare_to_wait (int *,int *,int ) ;
 int wait ;

__attribute__((used)) static void dmz_wait_for_free_zones(struct dmz_metadata *zmd)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(&zmd->free_wq, &wait, TASK_UNINTERRUPTIBLE);
 dmz_unlock_map(zmd);
 dmz_unlock_metadata(zmd);

 io_schedule_timeout(HZ);

 dmz_lock_metadata(zmd);
 dmz_lock_map(zmd);
 finish_wait(&zmd->free_wq, &wait);
}
