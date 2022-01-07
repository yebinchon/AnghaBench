
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_snapshot {int state_bits; } ;


 int RUNNING_MERGE ;
 int SHUTDOWN_MERGE ;
 int TASK_UNINTERRUPTIBLE ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wait_on_bit (int *,int ,int ) ;

__attribute__((used)) static void stop_merge(struct dm_snapshot *s)
{
 set_bit(SHUTDOWN_MERGE, &s->state_bits);
 wait_on_bit(&s->state_bits, RUNNING_MERGE, TASK_UNINTERRUPTIBLE);
 clear_bit(SHUTDOWN_MERGE, &s->state_bits);
}
