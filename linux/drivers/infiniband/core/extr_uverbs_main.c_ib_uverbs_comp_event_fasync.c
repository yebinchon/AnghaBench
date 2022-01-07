
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int async_queue; } ;
struct ib_uverbs_completion_event_file {TYPE_1__ ev_queue; } ;
struct file {struct ib_uverbs_completion_event_file* private_data; } ;


 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int ib_uverbs_comp_event_fasync(int fd, struct file *filp, int on)
{
 struct ib_uverbs_completion_event_file *comp_ev_file =
  filp->private_data;

 return fasync_helper(fd, filp, on, &comp_ev_file->ev_queue.async_queue);
}
