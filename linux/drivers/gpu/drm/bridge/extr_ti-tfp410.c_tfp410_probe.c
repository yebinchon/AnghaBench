
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int tfp410_init (int *,int) ;

__attribute__((used)) static int tfp410_probe(struct platform_device *pdev)
{
 return tfp410_init(&pdev->dev, 0);
}
