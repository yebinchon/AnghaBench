
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 int altr_edac_device_of_match ;
 int of_platform_populate (int ,int ,int *,TYPE_1__*) ;

__attribute__((used)) static int altr_edac_probe(struct platform_device *pdev)
{
 of_platform_populate(pdev->dev.of_node, altr_edac_device_of_match,
        ((void*)0), &pdev->dev);
 return 0;
}
