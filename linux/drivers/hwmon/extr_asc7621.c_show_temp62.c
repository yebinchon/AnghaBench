
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
struct TYPE_4__ {int* reg; } ;
struct TYPE_3__ {size_t* msb; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp62(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);
 u8 regval = data->reg[param->msb[0]];
 int temp = ((s8) (regval & 0xfc) * 1000) + ((regval & 0x03) * 250);

 return sprintf(buf, "%d\n", temp);
}
