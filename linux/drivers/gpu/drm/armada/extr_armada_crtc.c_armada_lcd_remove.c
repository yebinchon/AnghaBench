
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int armada_lcd_ops ;
 int component_del (int *,int *) ;

__attribute__((used)) static int armada_lcd_remove(struct platform_device *pdev)
{
 component_del(&pdev->dev, &armada_lcd_ops);
 return 0;
}
