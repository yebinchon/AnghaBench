
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_device_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int rmi_driver_of_probe(struct device *dev,
     struct rmi_device_platform_data *pdata)
{
 return -ENODEV;
}
