
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es2_ap_dev {int apb_log_dentry; int apb_log_task; } ;


 scalar_t__ IS_ERR (int ) ;
 int IS_ERR_OR_NULL (int ) ;
 int apb_log_fops ;
 int apb_log_poll ;
 int debugfs_create_file (char*,int,int ,struct es2_ap_dev*,int *) ;
 int gb_debugfs_get () ;
 int kthread_run (int ,struct es2_ap_dev*,char*) ;

__attribute__((used)) static void usb_log_enable(struct es2_ap_dev *es2)
{
 if (!IS_ERR_OR_NULL(es2->apb_log_task))
  return;


 es2->apb_log_task = kthread_run(apb_log_poll, es2, "apb_log");
 if (IS_ERR(es2->apb_log_task))
  return;

 es2->apb_log_dentry = debugfs_create_file("apb_log", 0444,
        gb_debugfs_get(), es2,
        &apb_log_fops);
}
