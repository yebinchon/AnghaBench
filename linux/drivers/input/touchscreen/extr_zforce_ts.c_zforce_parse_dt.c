
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zforce_ts_platdata {int y_max; int x_max; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 struct zforce_ts_platdata* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 struct zforce_ts_platdata* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static struct zforce_ts_platdata *zforce_parse_dt(struct device *dev)
{
 struct zforce_ts_platdata *pdata;
 struct device_node *np = dev->of_node;

 if (!np)
  return ERR_PTR(-ENOENT);

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata) {
  dev_err(dev, "failed to allocate platform data\n");
  return ERR_PTR(-ENOMEM);
 }

 if (of_property_read_u32(np, "x-size", &pdata->x_max)) {
  dev_err(dev, "failed to get x-size property\n");
  return ERR_PTR(-EINVAL);
 }

 if (of_property_read_u32(np, "y-size", &pdata->y_max)) {
  dev_err(dev, "failed to get y-size property\n");
  return ERR_PTR(-EINVAL);
 }

 return pdata;
}
