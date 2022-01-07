
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mpc_i2c {int base; scalar_t__ irq; scalar_t__ clk_per; int adap; } ;


 int clk_disable_unprepare (scalar_t__) ;
 int free_irq (scalar_t__,struct mpc_i2c*) ;
 int i2c_del_adapter (int *) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (scalar_t__) ;
 int kfree (struct mpc_i2c*) ;
 struct mpc_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int fsl_i2c_remove(struct platform_device *op)
{
 struct mpc_i2c *i2c = platform_get_drvdata(op);

 i2c_del_adapter(&i2c->adap);

 if (i2c->clk_per)
  clk_disable_unprepare(i2c->clk_per);

 if (i2c->irq)
  free_irq(i2c->irq, i2c);

 irq_dispose_mapping(i2c->irq);
 iounmap(i2c->base);
 kfree(i2c);
 return 0;
}
