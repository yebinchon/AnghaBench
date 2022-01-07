
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
typedef int s8 ;
struct TYPE_4__ {int* reg; int update_lock; } ;
struct TYPE_3__ {size_t* msb; size_t* lsb; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp10(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u8 msb, lsb;
 int temp;

 mutex_lock(&data->update_lock);
 msb = data->reg[param->msb[0]];
 lsb = (data->reg[param->lsb[0]] >> 6) & 0x03;
 temp = (((s8) msb) * 1000) + (lsb * 250);
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%d\n", temp);
}
