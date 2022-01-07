
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;


 int ENODEV ;
 struct of_device_id* of_match_node (int ,int ) ;
 int panel_simple_probe (TYPE_1__*,int ) ;
 int platform_of_match ;

__attribute__((used)) static int panel_simple_platform_probe(struct platform_device *pdev)
{
 const struct of_device_id *id;

 id = of_match_node(platform_of_match, pdev->dev.of_node);
 if (!id)
  return -ENODEV;

 return panel_simple_probe(&pdev->dev, id->data);
}
