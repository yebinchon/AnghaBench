
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm73_data {int ctrl; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM73_CTRL_RES_MASK ;
 int LM73_CTRL_RES_SHIFT ;
 int PAGE_SIZE ;
 struct lm73_data* dev_get_drvdata (struct device*) ;
 int * lm73_convrates ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t convrate_show(struct device *dev, struct device_attribute *da,
        char *buf)
{
 struct lm73_data *data = dev_get_drvdata(dev);
 int res;

 res = (data->ctrl & LM73_CTRL_RES_MASK) >> LM73_CTRL_RES_SHIFT;
 return scnprintf(buf, PAGE_SIZE, "%hu\n", lm73_convrates[res]);
}
