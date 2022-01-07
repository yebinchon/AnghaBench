
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es2_ap_dev {int * apb_log_task; int * apb_log_dentry; } ;


 scalar_t__ IS_ERR_OR_NULL (int *) ;
 int debugfs_remove (int *) ;
 int kthread_stop (int *) ;

__attribute__((used)) static void usb_log_disable(struct es2_ap_dev *es2)
{
 if (IS_ERR_OR_NULL(es2->apb_log_task))
  return;

 debugfs_remove(es2->apb_log_dentry);
 es2->apb_log_dentry = ((void*)0);

 kthread_stop(es2->apb_log_task);
 es2->apb_log_task = ((void*)0);
}
