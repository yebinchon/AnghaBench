
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int* reg; int update_lock; } ;
struct TYPE_3__ {size_t* msb; int* shift; int* mask; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_pwm_enable(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u8 config, altbit, minoff, val, newval;

 mutex_lock(&data->update_lock);
 config = (data->reg[param->msb[0]] >> param->shift[0]) & param->mask[0];
 altbit = (data->reg[param->msb[1]] >> param->shift[1]) & param->mask[1];
 minoff = (data->reg[param->msb[2]] >> param->shift[2]) & param->mask[2];
 mutex_unlock(&data->update_lock);

 val = config | (altbit << 3);

 if (val == 3 || val >= 10)
  newval = 255;
 else if (val == 4)
  newval = 0;
 else if (val == 7)
  newval = 1;
 else if (minoff == 1)
  newval = 2;
 else
  newval = 3;

 return sprintf(buf, "%u\n", newval);
}
