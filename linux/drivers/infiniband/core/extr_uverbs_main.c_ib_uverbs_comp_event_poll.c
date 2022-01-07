
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct ib_uverbs_completion_event_file {int ev_queue; } ;
struct file {struct ib_uverbs_completion_event_file* private_data; } ;
typedef int __poll_t ;


 int ib_uverbs_event_poll (int *,struct file*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t ib_uverbs_comp_event_poll(struct file *filp,
           struct poll_table_struct *wait)
{
 struct ib_uverbs_completion_event_file *comp_ev_file =
  filp->private_data;

 return ib_uverbs_event_poll(&comp_ev_file->ev_queue, filp, wait);
}
