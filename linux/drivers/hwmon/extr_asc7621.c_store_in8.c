
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_6__ {long* reg; int update_lock; } ;
struct TYPE_5__ {size_t* msb; } ;
struct TYPE_4__ {size_t index; } ;


 size_t EINVAL ;
 int SETUP_STORE_DATA_PARAM (struct device*,struct device_attribute*) ;
 long* asc7621_in_scaling ;
 long clamp_val (long,int ,int) ;
 int client ;
 TYPE_3__* data ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* param ;
 TYPE_1__* sda ;
 int write_byte (int ,size_t,long) ;

__attribute__((used)) static ssize_t store_in8(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 SETUP_STORE_DATA_PARAM(dev, attr);
 long reqval;
 u8 nr = sda->index;

 if (kstrtol(buf, 10, &reqval))
  return -EINVAL;

 reqval = clamp_val(reqval, 0, 0xffff);

 reqval = reqval * 0xc0 / asc7621_in_scaling[nr];

 reqval = clamp_val(reqval, 0, 0xff);

 mutex_lock(&data->update_lock);
 data->reg[param->msb[0]] = reqval;
 write_byte(client, param->msb[0], reqval);
 mutex_unlock(&data->update_lock);

 return count;
}
