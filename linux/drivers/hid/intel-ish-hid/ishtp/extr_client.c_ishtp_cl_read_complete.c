
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_rb {int list; struct ishtp_cl* cl; } ;
struct TYPE_2__ {int list; } ;
struct ishtp_cl {int device; int in_process_spinlock; TYPE_1__ in_process_list; } ;


 int ishtp_cl_bus_rx_event (int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ishtp_cl_read_complete(struct ishtp_cl_rb *rb)
{
 unsigned long flags;
 int schedule_work_flag = 0;
 struct ishtp_cl *cl = rb->cl;

 spin_lock_irqsave(&cl->in_process_spinlock, flags);




 schedule_work_flag = list_empty(&cl->in_process_list.list);
 list_add_tail(&rb->list, &cl->in_process_list.list);
 spin_unlock_irqrestore(&cl->in_process_spinlock, flags);

 if (schedule_work_flag)
  ishtp_cl_bus_rx_event(cl->device);
}
