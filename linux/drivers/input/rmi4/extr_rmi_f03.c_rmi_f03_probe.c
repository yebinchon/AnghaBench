
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rmi_function {struct device dev; } ;
struct f03_data {int device_count; struct rmi_function* fn; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct f03_data*) ;
 int dev_warn (struct device*,char*,int) ;
 struct f03_data* devm_kzalloc (struct device*,int,int ) ;
 int rmi_f03_initialize (struct f03_data*) ;

__attribute__((used)) static int rmi_f03_probe(struct rmi_function *fn)
{
 struct device *dev = &fn->dev;
 struct f03_data *f03;
 int error;

 f03 = devm_kzalloc(dev, sizeof(struct f03_data), GFP_KERNEL);
 if (!f03)
  return -ENOMEM;

 f03->fn = fn;

 error = rmi_f03_initialize(f03);
 if (error < 0)
  return error;

 if (f03->device_count != 1)
  dev_warn(dev, "found %d devices on PS/2 passthrough",
    f03->device_count);

 dev_set_drvdata(dev, f03);
 return 0;
}
