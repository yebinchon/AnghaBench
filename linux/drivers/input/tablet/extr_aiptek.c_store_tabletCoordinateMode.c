
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int coordinateMode; } ;
struct aiptek {TYPE_1__ newSetting; } ;
typedef size_t ssize_t ;


 int AIPTEK_INVALID_VALUE ;
 size_t EINVAL ;
 int coordinate_mode_map ;
 struct aiptek* dev_get_drvdata (struct device*) ;
 int map_str_to_val (int ,char const*,size_t) ;

__attribute__((used)) static ssize_t
store_tabletCoordinateMode(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 struct aiptek *aiptek = dev_get_drvdata(dev);
 int new_mode = map_str_to_val(coordinate_mode_map, buf, count);

 if (new_mode == AIPTEK_INVALID_VALUE)
  return -EINVAL;

 aiptek->newSetting.coordinateMode = new_mode;
 return count;
}
