
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear_kbd {int clk; int input; } ;
struct platform_device {int dummy; } ;


 int clk_unprepare (int ) ;
 int input_unregister_device (int ) ;
 struct spear_kbd* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int spear_kbd_remove(struct platform_device *pdev)
{
 struct spear_kbd *kbd = platform_get_drvdata(pdev);

 input_unregister_device(kbd->input);
 clk_unprepare(kbd->clk);

 return 0;
}
