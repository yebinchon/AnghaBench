
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct aspeed_i2c_bus {int adap; int rst; int lock; scalar_t__ base; } ;


 scalar_t__ ASPEED_I2C_FUN_CTRL_REG ;
 scalar_t__ ASPEED_I2C_INTR_CTRL_REG ;
 int i2c_del_adapter (int *) ;
 struct aspeed_i2c_bus* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aspeed_i2c_remove_bus(struct platform_device *pdev)
{
 struct aspeed_i2c_bus *bus = platform_get_drvdata(pdev);
 unsigned long flags;

 spin_lock_irqsave(&bus->lock, flags);


 writel(0, bus->base + ASPEED_I2C_FUN_CTRL_REG);
 writel(0, bus->base + ASPEED_I2C_INTR_CTRL_REG);

 spin_unlock_irqrestore(&bus->lock, flags);

 reset_control_assert(bus->rst);

 i2c_del_adapter(&bus->adap);

 return 0;
}
