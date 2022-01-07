
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct rmi_device_platform_data {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int rmi_spi_of_probe(struct spi_device *spi,
    struct rmi_device_platform_data *pdata)
{
 return -ENODEV;
}
