
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int vrm; int vid; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct adt7475_data*) ;
 int PTR_ERR (struct adt7475_data*) ;
 struct adt7475_data* adt7475_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int ,int ) ;

__attribute__((used)) static ssize_t cpu0_vid_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct adt7475_data *data = adt7475_update_device(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", vid_from_reg(data->vid, data->vrm));
}
