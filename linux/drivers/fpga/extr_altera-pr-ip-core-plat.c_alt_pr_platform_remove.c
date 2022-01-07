
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int alt_pr_unregister (struct device*) ;

__attribute__((used)) static int alt_pr_platform_remove(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 alt_pr_unregister(dev);

 return 0;
}
