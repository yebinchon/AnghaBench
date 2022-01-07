
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {int private_data; } ;
typedef int __poll_t ;


 int ib_uverbs_event_poll (int ,struct file*,struct poll_table_struct*) ;

__attribute__((used)) static __poll_t ib_uverbs_async_event_poll(struct file *filp,
            struct poll_table_struct *wait)
{
 return ib_uverbs_event_poll(filp->private_data, filp, wait);
}
