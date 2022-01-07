
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int clk; int rst; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct vic* dev_get_drvdata (struct device*) ;
 int reset_control_deassert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int vic_runtime_resume(struct device *dev)
{
 struct vic *vic = dev_get_drvdata(dev);
 int err;

 err = clk_prepare_enable(vic->clk);
 if (err < 0)
  return err;

 usleep_range(10, 20);

 err = reset_control_deassert(vic->rst);
 if (err < 0)
  goto disable;

 usleep_range(10, 20);

 return 0;

disable:
 clk_disable_unprepare(vic->clk);
 return err;
}
