
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {long* reg; int update_lock; } ;
struct TYPE_3__ {size_t* msb; size_t* lsb; } ;


 size_t EINVAL ;
 int SETUP_STORE_DATA_PARAM (struct device*,struct device_attribute*) ;
 int clamp_val (int,int ,int) ;
 int client ;
 TYPE_2__* data ;
 scalar_t__ kstrtol (char const*,int,long*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int write_byte (int ,size_t,long) ;

__attribute__((used)) static ssize_t store_fan16(struct device *dev,
      struct device_attribute *attr, const char *buf,
      size_t count)
{
 SETUP_STORE_DATA_PARAM(dev, attr);
 long reqval;

 if (kstrtol(buf, 10, &reqval))
  return -EINVAL;






 reqval =
     (reqval <= 0 ? 0xffff : clamp_val(5400000 / reqval, 0, 0xfffe));

 mutex_lock(&data->update_lock);
 data->reg[param->msb[0]] = (reqval >> 8) & 0xff;
 data->reg[param->lsb[0]] = reqval & 0xff;
 write_byte(client, param->msb[0], data->reg[param->msb[0]]);
 write_byte(client, param->lsb[0], data->reg[param->lsb[0]]);
 mutex_unlock(&data->update_lock);

 return count;
}
