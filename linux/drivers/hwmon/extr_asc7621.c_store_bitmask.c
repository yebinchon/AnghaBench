
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {long* reg; int update_lock; } ;
struct TYPE_3__ {long* mask; long* shift; size_t* msb; } ;


 size_t EINVAL ;
 int SETUP_STORE_DATA_PARAM (struct device*,struct device_attribute*) ;
 long clamp_val (long,int ,long) ;
 int client ;
 TYPE_2__* data ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 long read_byte (int ,size_t) ;
 int write_byte (int ,size_t,long) ;

__attribute__((used)) static ssize_t store_bitmask(struct device *dev,
        struct device_attribute *attr,
        const char *buf, size_t count)
{
 SETUP_STORE_DATA_PARAM(dev, attr);
 long reqval;
 u8 currval;

 if (kstrtol(buf, 10, &reqval))
  return -EINVAL;

 reqval = clamp_val(reqval, 0, param->mask[0]);

 reqval = (reqval & param->mask[0]) << param->shift[0];

 mutex_lock(&data->update_lock);
 currval = read_byte(client, param->msb[0]);
 reqval |= (currval & ~(param->mask[0] << param->shift[0]));
 data->reg[param->msb[0]] = reqval;
 write_byte(client, param->msb[0], reqval);
 mutex_unlock(&data->update_lock);
 return count;
}
