
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct aspeed_i2c_bus {int lock; scalar_t__ base; int dev; } ;


 scalar_t__ ASPEED_I2C_INTR_CTRL_REG ;
 scalar_t__ ASPEED_I2C_INTR_STS_REG ;
 int aspeed_i2c_init (struct aspeed_i2c_bus*,struct platform_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct platform_device* to_platform_device (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)
{
 struct platform_device *pdev = to_platform_device(bus->dev);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&bus->lock, flags);


 writel(0, bus->base + ASPEED_I2C_INTR_CTRL_REG);
 writel(0xffffffff, bus->base + ASPEED_I2C_INTR_STS_REG);

 ret = aspeed_i2c_init(bus, pdev);

 spin_unlock_irqrestore(&bus->lock, flags);

 return ret;
}
