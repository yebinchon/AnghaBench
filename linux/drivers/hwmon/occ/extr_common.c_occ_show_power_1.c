
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct power_sensor_1 {int value; int update_tag; int accumulator; int sensor_id; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct occ_sensors {TYPE_1__ power; } ;
struct occ {unsigned long long powr_sample_time_us; struct occ_sensors sensors; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 scalar_t__ PAGE_SIZE ;
 struct occ* dev_get_drvdata (struct device*) ;
 unsigned long long get_unaligned_be16 (int *) ;
 unsigned long long get_unaligned_be32 (int *) ;
 int occ_update_response (struct occ*) ;
 int snprintf (char*,scalar_t__,char*,unsigned long long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t occ_show_power_1(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 int rc;
 u64 val = 0;
 struct power_sensor_1 *power;
 struct occ *occ = dev_get_drvdata(dev);
 struct occ_sensors *sensors = &occ->sensors;
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);

 rc = occ_update_response(occ);
 if (rc)
  return rc;

 power = ((struct power_sensor_1 *)sensors->power.data) + sattr->index;

 switch (sattr->nr) {
 case 0:
  val = get_unaligned_be16(&power->sensor_id);
  break;
 case 1:
  val = get_unaligned_be32(&power->accumulator) /
   get_unaligned_be32(&power->update_tag);
  val *= 1000000ULL;
  break;
 case 2:
  val = (u64)get_unaligned_be32(&power->update_tag) *
      occ->powr_sample_time_us;
  break;
 case 3:
  val = get_unaligned_be16(&power->value) * 1000000ULL;
  break;
 default:
  return -EINVAL;
 }

 return snprintf(buf, PAGE_SIZE - 1, "%llu\n", val);
}
