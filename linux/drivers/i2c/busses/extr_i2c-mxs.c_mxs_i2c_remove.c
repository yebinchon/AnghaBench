
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mxs_i2c_dev {scalar_t__ regs; scalar_t__ dmach; int adapter; } ;


 scalar_t__ MXS_I2C_CTRL0_SET ;
 int MXS_I2C_CTRL0_SFTRST ;
 int dma_release_channel (scalar_t__) ;
 int i2c_del_adapter (int *) ;
 struct mxs_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mxs_i2c_remove(struct platform_device *pdev)
{
 struct mxs_i2c_dev *i2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c->adapter);

 if (i2c->dmach)
  dma_release_channel(i2c->dmach);

 writel(MXS_I2C_CTRL0_SFTRST, i2c->regs + MXS_I2C_CTRL0_SET);

 return 0;
}
