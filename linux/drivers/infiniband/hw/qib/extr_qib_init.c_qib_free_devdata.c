
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rdi; } ;
struct qib_devdata {TYPE_1__ verbs_dev; int int_counter; int unit; } ;


 int __xa_erase (int *,int ) ;
 int free_percpu (int ) ;
 int qib_dbg_ibdev_exit (TYPE_1__*) ;
 int qib_dev_table ;
 int rvt_dealloc_device (int *) ;
 int xa_lock_irqsave (int *,unsigned long) ;
 int xa_unlock_irqrestore (int *,unsigned long) ;

void qib_free_devdata(struct qib_devdata *dd)
{
 unsigned long flags;

 xa_lock_irqsave(&qib_dev_table, flags);
 __xa_erase(&qib_dev_table, dd->unit);
 xa_unlock_irqrestore(&qib_dev_table, flags);




 free_percpu(dd->int_counter);
 rvt_dealloc_device(&dd->verbs_dev.rdi);
}
