
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_keypad {int clk; int input_dev; } ;
struct platform_device {int dev; } ;


 int clk_unprepare (int ) ;
 int input_unregister_device (int ) ;
 struct samsung_keypad* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int samsung_keypad_remove(struct platform_device *pdev)
{
 struct samsung_keypad *keypad = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);

 input_unregister_device(keypad->input_dev);

 clk_unprepare(keypad->clk);

 return 0;
}
