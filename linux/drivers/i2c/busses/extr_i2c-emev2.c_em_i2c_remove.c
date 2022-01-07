
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct em_i2c_device {int sclk; int adap; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct em_i2c_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int em_i2c_remove(struct platform_device *dev)
{
 struct em_i2c_device *priv = platform_get_drvdata(dev);

 i2c_del_adapter(&priv->adap);
 clk_disable_unprepare(priv->sclk);

 return 0;
}
