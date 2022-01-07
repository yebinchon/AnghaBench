
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_platform_data {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int mcp4725_probe_dt(struct device *dev,
       struct mcp4725_platform_data *platform_data)
{
 return -ENODEV;
}
