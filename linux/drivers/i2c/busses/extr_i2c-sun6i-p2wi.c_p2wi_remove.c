
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct p2wi {int adapter; int clk; int rstc; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct p2wi* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int p2wi_remove(struct platform_device *dev)
{
 struct p2wi *p2wi = platform_get_drvdata(dev);

 reset_control_assert(p2wi->rstc);
 clk_disable_unprepare(p2wi->clk);
 i2c_del_adapter(&p2wi->adapter);

 return 0;
}
