
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
 size_t clamp_val (int,int ,int) ;
 TYPE_2__* data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int const) ;

__attribute__((used)) static ssize_t show_pwm_ac(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u8 config, altbit, regval;
 static const u8 map[] = {
  0x01, 0x02, 0x04, 0x1f, 0x00, 0x06, 0x07, 0x10,
  0x08, 0x0f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
 };

 mutex_lock(&data->update_lock);
 config = (data->reg[param->msb[0]] >> param->shift[0]) & param->mask[0];
 altbit = (data->reg[param->msb[1]] >> param->shift[1]) & param->mask[1];
 regval = config | (altbit << 3);
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%u\n", map[clamp_val(regval, 0, 15)]);
}
