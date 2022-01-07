
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mbox_test_device {scalar_t__ rx_channel; scalar_t__ tx_channel; int root_debugfs_dir; } ;


 int debugfs_remove_recursive (int ) ;
 int mbox_free_channel (scalar_t__) ;
 struct mbox_test_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mbox_test_remove(struct platform_device *pdev)
{
 struct mbox_test_device *tdev = platform_get_drvdata(pdev);

 debugfs_remove_recursive(tdev->root_debugfs_dir);

 if (tdev->tx_channel)
  mbox_free_channel(tdev->tx_channel);
 if (tdev->rx_channel)
  mbox_free_channel(tdev->rx_channel);

 return 0;
}
