
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int acpi_coresight_get_cpu(struct device *dev)
{
 return -ENODEV;
}
