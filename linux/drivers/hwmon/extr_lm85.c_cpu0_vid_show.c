
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm85_data {int vid; int vrm; scalar_t__ has_vid5; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm85_data* lm85_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int,int ) ;

__attribute__((used)) static ssize_t cpu0_vid_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct lm85_data *data = lm85_update_device(dev);
 int vid;

 if (data->has_vid5) {

  vid = vid_from_reg(data->vid & 0x3f, data->vrm);
 } else {

  vid = vid_from_reg(data->vid & 0x1f, data->vrm);
 }

 return sprintf(buf, "%d\n", vid);
}
