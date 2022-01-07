
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_data {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ driver_data; } ;


 TYPE_1__* platform_get_device_id (struct platform_device*) ;

__attribute__((used)) static struct soc_data *s3c24xx_dma_get_soc_data(struct platform_device *pdev)
{
 return (struct soc_data *)
    platform_get_device_id(pdev)->driver_data;
}
