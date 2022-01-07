
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_device {int clock; int bus_clock; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void panfrost_clk_fini(struct panfrost_device *pfdev)
{
 clk_disable_unprepare(pfdev->bus_clock);
 clk_disable_unprepare(pfdev->clock);
}
