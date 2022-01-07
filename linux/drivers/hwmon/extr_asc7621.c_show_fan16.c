
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int* reg; int update_lock; } ;
struct TYPE_3__ {size_t* msb; size_t* lsb; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_fan16(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u16 regval;

 mutex_lock(&data->update_lock);
 regval = (data->reg[param->msb[0]] << 8) | data->reg[param->lsb[0]];
 mutex_unlock(&data->update_lock);

 return sprintf(buf, "%u\n",
         (regval == 0 ? -1 : (regval) ==
   0xffff ? 0 : 5400000 / regval));
}
