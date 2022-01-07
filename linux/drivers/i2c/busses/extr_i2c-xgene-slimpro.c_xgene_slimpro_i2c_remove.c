
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slimpro_i2c_dev {int mbox_chan; int adapter; } ;
struct platform_device {int dummy; } ;


 scalar_t__ acpi_disabled ;
 int i2c_del_adapter (int *) ;
 int mbox_free_channel (int ) ;
 int pcc_mbox_free_channel (int ) ;
 struct slimpro_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int xgene_slimpro_i2c_remove(struct platform_device *pdev)
{
 struct slimpro_i2c_dev *ctx = platform_get_drvdata(pdev);

 i2c_del_adapter(&ctx->adapter);

 if (acpi_disabled)
  mbox_free_channel(ctx->mbox_chan);
 else
  pcc_mbox_free_channel(ctx->mbox_chan);

 return 0;
}
