
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int* reg; } ;
struct TYPE_3__ {size_t* msb; int* shift; int* mask; } ;


 int SETUP_SHOW_DATA_PARAM (struct device*,struct device_attribute*) ;
 TYPE_2__* data ;
 TYPE_1__* param ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_bitmask(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 SETUP_SHOW_DATA_PARAM(dev, attr);

 return sprintf(buf, "%u\n",
         (data->reg[param->msb[0]] >> param->
   shift[0]) & param->mask[0]);
}
