
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef long s8 ;
struct TYPE_4__ {long* reg; int update_lock; } ;
struct TYPE_3__ {size_t* msb; } ;


 size_t EINVAL ;
 int SETUP_STORE_DATA_PARAM (struct device*,struct device_attribute*) ;
 long clamp_val (long,int,int) ;
 int client ;
 TYPE_2__* data ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int write_byte (int ,size_t,long) ;

__attribute__((used)) static ssize_t store_temp8(struct device *dev,
      struct device_attribute *attr, const char *buf,
      size_t count)
{
 SETUP_STORE_DATA_PARAM(dev, attr);
 long reqval;
 s8 temp;

 if (kstrtol(buf, 10, &reqval))
  return -EINVAL;

 reqval = clamp_val(reqval, -127000, 127000);

 temp = reqval / 1000;

 mutex_lock(&data->update_lock);
 data->reg[param->msb[0]] = temp;
 write_byte(client, param->msb[0], temp);
 mutex_unlock(&data->update_lock);
 return count;
}
