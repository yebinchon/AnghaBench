
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct device {int dummy; } ;


 int mdp5_destroy (struct platform_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void mdp5_unbind(struct device *dev, struct device *master,
   void *data)
{
 struct platform_device *pdev = to_platform_device(dev);

 mdp5_destroy(pdev);
}
