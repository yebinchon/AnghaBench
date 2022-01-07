
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_device {int clk_bus; int clk_gpu; int * reset; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int *) ;

__attribute__((used)) static void lima_clk_fini(struct lima_device *dev)
{
 if (dev->reset != ((void*)0))
  reset_control_assert(dev->reset);
 clk_disable_unprepare(dev->clk_gpu);
 clk_disable_unprepare(dev->clk_bus);
}
