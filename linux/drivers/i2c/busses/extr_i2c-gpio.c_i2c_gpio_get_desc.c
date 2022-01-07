
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;
typedef enum gpiod_flags { ____Placeholder_gpiod_flags } gpiod_flags ;


 int EINVAL ;
 int ENOENT ;
 int EPROBE_DEFER ;
 struct gpio_desc* ERR_PTR (int) ;
 int IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,int) ;
 struct gpio_desc* devm_gpiod_get (struct device*,char const*,int) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,int *,unsigned int,int) ;

__attribute__((used)) static struct gpio_desc *i2c_gpio_get_desc(struct device *dev,
        const char *con_id,
        unsigned int index,
        enum gpiod_flags gflags)
{
 struct gpio_desc *retdesc;
 int ret;

 retdesc = devm_gpiod_get(dev, con_id, gflags);
 if (!IS_ERR(retdesc)) {
  dev_dbg(dev, "got GPIO from name %s\n", con_id);
  return retdesc;
 }

 retdesc = devm_gpiod_get_index(dev, ((void*)0), index, gflags);
 if (!IS_ERR(retdesc)) {
  dev_dbg(dev, "got GPIO from index %u\n", index);
  return retdesc;
 }

 ret = PTR_ERR(retdesc);


 if (ret == -EINVAL)
  retdesc = ERR_PTR(-EPROBE_DEFER);


 if (ret == -ENOENT)
  retdesc = ERR_PTR(-EPROBE_DEFER);

 if (ret != -EPROBE_DEFER)
  dev_err(dev, "error trying to get descriptor: %d\n", ret);

 return retdesc;
}
