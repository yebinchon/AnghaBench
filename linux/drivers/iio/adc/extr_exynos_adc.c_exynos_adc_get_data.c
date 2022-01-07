
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct exynos_adc_data {int dummy; } ;


 int exynos_adc_match ;
 struct of_device_id* of_match_node (int ,int ) ;

__attribute__((used)) static struct exynos_adc_data *exynos_adc_get_data(struct platform_device *pdev)
{
 const struct of_device_id *match;

 match = of_match_node(exynos_adc_match, pdev->dev.of_node);
 return (struct exynos_adc_data *)match->data;
}
