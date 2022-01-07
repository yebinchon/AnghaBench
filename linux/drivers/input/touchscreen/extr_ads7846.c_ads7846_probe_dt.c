
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ads7846_platform_data {int dummy; } ;


 int EINVAL ;
 struct ads7846_platform_data const* ERR_PTR (int ) ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static const struct ads7846_platform_data *ads7846_probe_dt(struct device *dev)
{
 dev_err(dev, "no platform data defined\n");
 return ERR_PTR(-EINVAL);
}
