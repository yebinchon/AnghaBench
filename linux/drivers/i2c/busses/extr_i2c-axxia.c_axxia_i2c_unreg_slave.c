
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int adapter; } ;
struct axxia_i2c_dev {int * slave; int irq; scalar_t__ base; } ;


 scalar_t__ GLOBAL_CONTROL ;
 int GLOBAL_MST_EN ;
 scalar_t__ INTERRUPT_ENABLE ;
 int INT_MST ;
 struct axxia_i2c_dev* i2c_get_adapdata (int ) ;
 int synchronize_irq (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int axxia_i2c_unreg_slave(struct i2c_client *slave)
{
 struct axxia_i2c_dev *idev = i2c_get_adapdata(slave->adapter);


 writel(GLOBAL_MST_EN, idev->base + GLOBAL_CONTROL);
 writel(INT_MST, idev->base + INTERRUPT_ENABLE);

 synchronize_irq(idev->irq);

 idev->slave = ((void*)0);

 return 0;
}
