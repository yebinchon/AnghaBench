
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct nmk_i2c_dev {int clk; scalar_t__ virtbase; int adap; } ;
struct amba_device {struct resource res; } ;


 scalar_t__ I2C_CR ;
 int I2C_CR_PE ;
 struct nmk_i2c_dev* amba_get_drvdata (struct amba_device*) ;
 int clear_all_interrupts (struct nmk_i2c_dev*) ;
 int clk_disable_unprepare (int ) ;
 int disable_all_interrupts (struct nmk_i2c_dev*) ;
 int flush_i2c_fifo (struct nmk_i2c_dev*) ;
 int i2c_clr_bit (scalar_t__,int ) ;
 int i2c_del_adapter (int *) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int nmk_i2c_remove(struct amba_device *adev)
{
 struct resource *res = &adev->res;
 struct nmk_i2c_dev *dev = amba_get_drvdata(adev);

 i2c_del_adapter(&dev->adap);
 flush_i2c_fifo(dev);
 disable_all_interrupts(dev);
 clear_all_interrupts(dev);

 i2c_clr_bit(dev->virtbase + I2C_CR, I2C_CR_PE);
 clk_disable_unprepare(dev->clk);
 release_mem_region(res->start, resource_size(res));

 return 0;
}
