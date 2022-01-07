
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmi_2d_sensor_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

inline int rmi_2d_sensor_of_probe(struct device *dev,
   struct rmi_2d_sensor_platform_data *pdata)
{
 return -ENODEV;
}
