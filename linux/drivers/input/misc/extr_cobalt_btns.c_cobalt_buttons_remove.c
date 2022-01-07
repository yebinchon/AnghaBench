
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct buttons_dev {int reg; int poll_dev; } ;


 struct buttons_dev* dev_get_drvdata (struct device*) ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct buttons_dev*) ;

__attribute__((used)) static int cobalt_buttons_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct buttons_dev *bdev = dev_get_drvdata(dev);

 input_unregister_polled_device(bdev->poll_dev);
 input_free_polled_device(bdev->poll_dev);
 iounmap(bdev->reg);
 kfree(bdev);

 return 0;
}
