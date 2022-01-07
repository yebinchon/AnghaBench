
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct input_polled_dev {int dummy; } ;


 int input_free_polled_device (struct input_polled_dev*) ;
 int input_unregister_polled_device (struct input_polled_dev*) ;
 struct input_polled_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int clps711x_keypad_remove(struct platform_device *pdev)
{
 struct input_polled_dev *poll_dev = platform_get_drvdata(pdev);

 input_unregister_polled_device(poll_dev);
 input_free_polled_device(poll_dev);

 return 0;
}
