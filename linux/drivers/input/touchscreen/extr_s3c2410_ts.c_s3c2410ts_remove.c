
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int io; int input; int clock; int irq_tc; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int del_timer_sync (int *) ;
 int free_irq (int ,int ) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int touch_timer ;
 TYPE_1__ ts ;

__attribute__((used)) static int s3c2410ts_remove(struct platform_device *pdev)
{
 free_irq(ts.irq_tc, ts.input);
 del_timer_sync(&touch_timer);

 clk_disable_unprepare(ts.clock);
 clk_put(ts.clock);

 input_unregister_device(ts.input);
 iounmap(ts.io);

 return 0;
}
