
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm_device {TYPE_1__* data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int sw_start; int sw_end; } ;


 int sprintf (char*,char*,int,int) ;
 struct stm_device* to_stm_device (struct device*) ;

__attribute__((used)) static ssize_t masters_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct stm_device *stm = to_stm_device(dev);
 int ret;

 ret = sprintf(buf, "%u %u\n", stm->data->sw_start, stm->data->sw_end);

 return ret;
}
