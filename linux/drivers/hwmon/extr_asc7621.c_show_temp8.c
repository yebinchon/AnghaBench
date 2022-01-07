
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int s8 ;
struct TYPE_4__ {scalar_t__* reg; } ;
struct TYPE_3__ {size_t* msb; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_temp8(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);

 return sprintf(buf, "%d\n", ((s8) data->reg[param->msb[0]]) * 1000);
}
