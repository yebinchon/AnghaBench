
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x_on {int work; } ;
struct platform_device {int dummy; } ;


 int cancel_delayed_work_sync (int *) ;
 int free_irq (int,struct wm831x_on*) ;
 struct wm831x_on* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;

__attribute__((used)) static int wm831x_on_remove(struct platform_device *pdev)
{
 struct wm831x_on *wm831x_on = platform_get_drvdata(pdev);
 int irq = platform_get_irq(pdev, 0);

 free_irq(irq, wm831x_on);
 cancel_delayed_work_sync(&wm831x_on->work);

 return 0;
}
