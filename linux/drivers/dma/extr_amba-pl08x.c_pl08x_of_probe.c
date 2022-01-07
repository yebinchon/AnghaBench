
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_driver_data {int dummy; } ;
struct device_node {int dummy; } ;
struct amba_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int pl08x_of_probe(struct amba_device *adev,
     struct pl08x_driver_data *pl08x,
     struct device_node *np)
{
 return -EINVAL;
}
