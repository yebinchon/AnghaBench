
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm93_data {TYPE_1__* block7; int * vccp_limits; int * vid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int max; } ;


 long LM93_IN_FROM_REG (int,int ) ;
 long LM93_IN_MAX_FROM_REG (int ,long) ;
 long LM93_VID_FROM_REG (int ) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,long) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__* vccp_limit_type ;

__attribute__((used)) static ssize_t in_max_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct lm93_data *data = lm93_update_device(dev);
 int vccp = nr - 6;
 long rc, vid;

 if ((nr == 6 || nr == 7) && vccp_limit_type[vccp]) {
  vid = LM93_VID_FROM_REG(data->vid[vccp]);
  rc = LM93_IN_MAX_FROM_REG(data->vccp_limits[vccp], vid);
 } else {
  rc = LM93_IN_FROM_REG(nr, data->block7[nr].max);
 }
 return sprintf(buf, "%ld\n", rc);
}
