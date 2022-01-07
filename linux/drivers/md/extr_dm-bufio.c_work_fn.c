
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int DM_BUFIO_WORK_TIMER_SECS ;
 int HZ ;
 int cleanup_old_buffers () ;
 int dm_bufio_cleanup_old_work ;
 int dm_bufio_wq ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void work_fn(struct work_struct *w)
{
 cleanup_old_buffers();

 queue_delayed_work(dm_bufio_wq, &dm_bufio_cleanup_old_work,
      DM_BUFIO_WORK_TIMER_SECS * HZ);
}
