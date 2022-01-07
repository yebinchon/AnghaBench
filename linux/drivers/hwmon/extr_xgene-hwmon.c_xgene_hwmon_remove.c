
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_hwmon_dev {int mbox_chan; int async_msg_fifo; int hwmon_dev; } ;
struct platform_device {int dummy; } ;


 scalar_t__ acpi_disabled ;
 int hwmon_device_unregister (int ) ;
 int kfifo_free (int *) ;
 int mbox_free_channel (int ) ;
 int pcc_mbox_free_channel (int ) ;
 struct xgene_hwmon_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xgene_hwmon_remove(struct platform_device *pdev)
{
 struct xgene_hwmon_dev *ctx = platform_get_drvdata(pdev);

 hwmon_device_unregister(ctx->hwmon_dev);
 kfifo_free(&ctx->async_msg_fifo);
 if (acpi_disabled)
  mbox_free_channel(ctx->mbox_chan);
 else
  pcc_mbox_free_channel(ctx->mbox_chan);

 return 0;
}
