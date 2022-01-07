
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct input_polled_dev {int dummy; } ;


 struct input_polled_dev* dev_get_drvdata (int *) ;
 int input_free_polled_device (struct input_polled_dev*) ;
 int input_unregister_polled_device (struct input_polled_dev*) ;

__attribute__((used)) static int rb532_button_remove(struct platform_device *pdev)
{
 struct input_polled_dev *poll_dev = dev_get_drvdata(&pdev->dev);

 input_unregister_polled_device(poll_dev);
 input_free_polled_device(poll_dev);

 return 0;
}
