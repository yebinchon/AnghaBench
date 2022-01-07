
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mode; int * name; } ;
struct TYPE_5__ {TYPE_2__ attr; int show; } ;
struct sensor_device_attribute {int index; TYPE_1__ dev_attr; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {TYPE_2__** attrs; } ;
struct iio_hwmon_state {size_t num_channels; TYPE_4__** groups; TYPE_4__ attr_group; TYPE_2__** attrs; struct iio_channel* channels; } ;
struct iio_channel {scalar_t__ indio_dev; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;





 scalar_t__ IS_ERR (struct iio_channel*) ;
 int PTR_ERR (struct iio_channel*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,char*,struct iio_hwmon_state*,TYPE_4__**) ;
 struct iio_channel* devm_iio_channel_get_all (struct device*) ;
 void* devm_kasprintf (struct device*,int ,char*,char const*,...) ;
 TYPE_2__** devm_kcalloc (struct device*,int,int,int ) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 int iio_get_channel_type (struct iio_channel*,int*) ;
 int iio_hwmon_read_val ;
 int strreplace (char*,char,char) ;
 int sysfs_attr_init (TYPE_2__*) ;

__attribute__((used)) static int iio_hwmon_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct iio_hwmon_state *st;
 struct sensor_device_attribute *a;
 int ret, i;
 int in_i = 1, temp_i = 1, curr_i = 1, humidity_i = 1, power_i = 1;
 enum iio_chan_type type;
 struct iio_channel *channels;
 struct device *hwmon_dev;
 char *sname;

 channels = devm_iio_channel_get_all(dev);
 if (IS_ERR(channels)) {
  if (PTR_ERR(channels) == -ENODEV)
   return -EPROBE_DEFER;
  return PTR_ERR(channels);
 }

 st = devm_kzalloc(dev, sizeof(*st), GFP_KERNEL);
 if (st == ((void*)0))
  return -ENOMEM;

 st->channels = channels;


 while (st->channels[st->num_channels].indio_dev)
  st->num_channels++;

 st->attrs = devm_kcalloc(dev,
     st->num_channels + 1, sizeof(*st->attrs),
     GFP_KERNEL);
 if (st->attrs == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < st->num_channels; i++) {
  const char *prefix;
  int n;

  a = devm_kzalloc(dev, sizeof(*a), GFP_KERNEL);
  if (a == ((void*)0))
   return -ENOMEM;

  sysfs_attr_init(&a->dev_attr.attr);
  ret = iio_get_channel_type(&st->channels[i], &type);
  if (ret < 0)
   return ret;

  switch (type) {
  case 128:
   n = in_i++;
   prefix = "in";
   break;
  case 129:
   n = temp_i++;
   prefix = "temp";
   break;
  case 132:
   n = curr_i++;
   prefix = "curr";
   break;
  case 130:
   n = power_i++;
   prefix = "power";
   break;
  case 131:
   n = humidity_i++;
   prefix = "humidity";
   break;
  default:
   return -EINVAL;
  }

  a->dev_attr.attr.name = devm_kasprintf(dev, GFP_KERNEL,
             "%s%d_input",
             prefix, n);
  if (a->dev_attr.attr.name == ((void*)0))
   return -ENOMEM;

  a->dev_attr.show = iio_hwmon_read_val;
  a->dev_attr.attr.mode = 0444;
  a->index = i;
  st->attrs[i] = &a->dev_attr.attr;
 }

 st->attr_group.attrs = st->attrs;
 st->groups[0] = &st->attr_group;

 if (dev->of_node) {
  sname = devm_kasprintf(dev, GFP_KERNEL, "%pOFn", dev->of_node);
  if (!sname)
   return -ENOMEM;
  strreplace(sname, '-', '_');
 } else {
  sname = "iio_hwmon";
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, sname, st,
          st->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
