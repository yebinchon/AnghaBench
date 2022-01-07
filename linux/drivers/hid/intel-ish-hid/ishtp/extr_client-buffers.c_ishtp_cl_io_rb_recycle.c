
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_rb {int list; struct ishtp_cl* cl; } ;
struct TYPE_2__ {int list; } ;
struct ishtp_cl {int out_flow_ctrl_creds; int free_list_spinlock; TYPE_1__ free_rb_list; } ;


 int EFAULT ;
 int ishtp_cl_read_start (struct ishtp_cl*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_cl_io_rb_recycle(struct ishtp_cl_rb *rb)
{
 struct ishtp_cl *cl;
 int rets = 0;
 unsigned long flags;

 if (!rb || !rb->cl)
  return -EFAULT;

 cl = rb->cl;
 spin_lock_irqsave(&cl->free_list_spinlock, flags);
 list_add_tail(&rb->list, &cl->free_rb_list.list);
 spin_unlock_irqrestore(&cl->free_list_spinlock, flags);





 if (!cl->out_flow_ctrl_creds)
  rets = ishtp_cl_read_start(cl);

 return rets;
}
