
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vic {int booted; int clk; int rst; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct vic* dev_get_drvdata (struct device*) ;
 int reset_control_assert (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int vic_runtime_suspend(struct device *dev)
{
 struct vic *vic = dev_get_drvdata(dev);
 int err;

 err = reset_control_assert(vic->rst);
 if (err < 0)
  return err;

 usleep_range(2000, 4000);

 clk_disable_unprepare(vic->clk);

 vic->booted = 0;

 return 0;
}
