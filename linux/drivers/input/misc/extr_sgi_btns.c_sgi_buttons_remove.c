
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct buttons_dev {int poll_dev; } ;


 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int kfree (struct buttons_dev*) ;
 struct buttons_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int sgi_buttons_remove(struct platform_device *pdev)
{
 struct buttons_dev *bdev = platform_get_drvdata(pdev);

 input_unregister_polled_device(bdev->poll_dev);
 input_free_polled_device(bdev->poll_dev);
 kfree(bdev);

 return 0;
}
