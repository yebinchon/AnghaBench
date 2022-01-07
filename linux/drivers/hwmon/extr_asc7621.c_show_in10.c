
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u16 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int* reg; int update_lock; } ;
struct TYPE_5__ {size_t* msb; size_t* lsb; } ;
struct TYPE_4__ {size_t index; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 int* asc7621_in_scaling ;
 TYPE_3__* data ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_2__* param ;
 TYPE_1__* sda ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_in10(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u16 regval;
 u8 nr = sda->index;

 mutex_lock(&data->update_lock);
 regval = (data->reg[param->msb[0]] << 8) | (data->reg[param->lsb[0]]);
 mutex_unlock(&data->update_lock);


 regval = (regval >> 6) * asc7621_in_scaling[nr] / (0xc0 << 2);

 return sprintf(buf, "%u\n", regval);
}
