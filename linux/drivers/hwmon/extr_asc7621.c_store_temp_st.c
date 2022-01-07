
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int* reg; int update_lock; } ;
struct TYPE_3__ {int* mask; int* shift; size_t* msb; } ;


 size_t ARRAY_SIZE (long*) ;
 size_t EINVAL ;
 int SETUP_STORE_DATA_PARAM (struct device*,struct device_attribute*) ;
 long* asc7621_temp_smoothing_time_map ;
 int client ;
 TYPE_2__* data ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int read_byte (int ,size_t) ;
 int write_byte (int ,size_t,int) ;

__attribute__((used)) static ssize_t store_temp_st(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 SETUP_STORE_DATA_PARAM(dev, attr);
 long reqval;
 u8 currval, newval = 255;
 u32 i;

 if (kstrtol(buf, 10, &reqval))
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(asc7621_temp_smoothing_time_map); i++) {
  if (reqval == asc7621_temp_smoothing_time_map[i]) {
   newval = i;
   break;
  }
 }

 if (newval == 255)
  return -EINVAL;

 newval = (newval & param->mask[0]) << param->shift[0];

 mutex_lock(&data->update_lock);
 currval = read_byte(client, param->msb[0]);
 newval |= (currval & ~(param->mask[0] << param->shift[0]));
 data->reg[param->msb[0]] = newval;
 write_byte(client, param->msb[0], newval);
 mutex_unlock(&data->update_lock);
 return count;
}
