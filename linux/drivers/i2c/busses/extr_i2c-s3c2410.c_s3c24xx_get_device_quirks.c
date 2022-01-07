
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {int data; } ;
typedef int kernel_ulong_t ;
struct TYPE_4__ {int driver_data; } ;


 struct of_device_id* of_match_node (int ,scalar_t__) ;
 TYPE_2__* platform_get_device_id (struct platform_device*) ;
 int s3c24xx_i2c_match ;

__attribute__((used)) static inline kernel_ulong_t s3c24xx_get_device_quirks(struct platform_device *pdev)
{
 if (pdev->dev.of_node) {
  const struct of_device_id *match;

  match = of_match_node(s3c24xx_i2c_match, pdev->dev.of_node);
  return (kernel_ulong_t)match->data;
 }

 return platform_get_device_id(pdev)->driver_data;
}
