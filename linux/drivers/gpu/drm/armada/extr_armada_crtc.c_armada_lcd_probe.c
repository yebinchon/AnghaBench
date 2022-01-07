
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int armada_lcd_ops ;
 int component_add (int *,int *) ;

__attribute__((used)) static int armada_lcd_probe(struct platform_device *pdev)
{
 return component_add(&pdev->dev, &armada_lcd_ops);
}
