
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 scalar_t__ of_device_get_match_data (struct device*) ;

__attribute__((used)) static int get_mdp_ver(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;

 return (int) (unsigned long) of_device_get_match_data(dev);
}
