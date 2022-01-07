
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int vrm; int vid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int vid_from_reg (int ,int ) ;
 struct w83791d_data* w83791d_update_device (struct device*) ;

__attribute__((used)) static ssize_t cpu0_vid_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct w83791d_data *data = w83791d_update_device(dev);
 return sprintf(buf, "%d\n", vid_from_reg(data->vid, data->vrm));
}
