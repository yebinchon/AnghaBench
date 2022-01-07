
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_ts {int data_irq; int pd_irq; } ;
struct platform_device {int dummy; } ;


 int free_irq (int ,struct wm831x_ts*) ;
 struct wm831x_ts* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int wm831x_ts_remove(struct platform_device *pdev)
{
 struct wm831x_ts *wm831x_ts = platform_get_drvdata(pdev);

 free_irq(wm831x_ts->pd_irq, wm831x_ts);
 free_irq(wm831x_ts->data_irq, wm831x_ts);

 return 0;
}
