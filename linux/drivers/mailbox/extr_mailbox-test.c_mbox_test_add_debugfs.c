
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mbox_test_device {int root_debugfs_dir; } ;


 int EINVAL ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct mbox_test_device*,int *) ;
 int debugfs_initialized () ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int mbox_test_message_ops ;
 int mbox_test_signal_ops ;

__attribute__((used)) static int mbox_test_add_debugfs(struct platform_device *pdev,
     struct mbox_test_device *tdev)
{
 if (!debugfs_initialized())
  return 0;

 tdev->root_debugfs_dir = debugfs_create_dir(dev_name(&pdev->dev), ((void*)0));
 if (!tdev->root_debugfs_dir) {
  dev_err(&pdev->dev, "Failed to create Mailbox debugfs\n");
  return -EINVAL;
 }

 debugfs_create_file("message", 0600, tdev->root_debugfs_dir,
       tdev, &mbox_test_message_ops);

 debugfs_create_file("signal", 0200, tdev->root_debugfs_dir,
       tdev, &mbox_test_signal_ops);

 return 0;
}
