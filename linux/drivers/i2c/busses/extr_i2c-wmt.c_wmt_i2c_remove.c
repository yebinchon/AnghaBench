
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_i2c_dev {int adapter; int clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;


 scalar_t__ REG_IMR ;
 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct wmt_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int wmt_i2c_remove(struct platform_device *pdev)
{
 struct wmt_i2c_dev *i2c_dev = platform_get_drvdata(pdev);


 writew(0, i2c_dev->base + REG_IMR);
 clk_disable_unprepare(i2c_dev->clk);
 i2c_del_adapter(&i2c_dev->adapter);

 return 0;
}
