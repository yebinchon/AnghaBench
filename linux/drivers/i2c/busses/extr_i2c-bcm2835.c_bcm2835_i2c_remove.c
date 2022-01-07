
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct clk {int dummy; } ;
struct bcm2835_i2c_dev {int adapter; int irq; int dev; } ;


 int clk_disable_unprepare (struct clk*) ;
 int clk_rate_exclusive_put (struct clk*) ;
 struct clk* devm_clk_get (int ,char*) ;
 int free_irq (int ,struct bcm2835_i2c_dev*) ;
 int i2c_del_adapter (int *) ;
 struct bcm2835_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bcm2835_i2c_remove(struct platform_device *pdev)
{
 struct bcm2835_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
 struct clk *bus_clk = devm_clk_get(i2c_dev->dev, "div");

 clk_rate_exclusive_put(bus_clk);
 clk_disable_unprepare(bus_clk);

 free_irq(i2c_dev->irq, i2c_dev);
 i2c_del_adapter(&i2c_dev->adapter);

 return 0;
}
