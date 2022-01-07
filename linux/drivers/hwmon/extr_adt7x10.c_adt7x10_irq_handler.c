
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int kobj; } ;
typedef int irqreturn_t ;


 int ADT7X10_STATUS ;
 int ADT7X10_STAT_T_CRIT ;
 int ADT7X10_STAT_T_HIGH ;
 int ADT7X10_STAT_T_LOW ;
 int IRQ_HANDLED ;
 int adt7x10_read_byte (struct device*,int ) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static irqreturn_t adt7x10_irq_handler(int irq, void *private)
{
 struct device *dev = private;
 int status;

 status = adt7x10_read_byte(dev, ADT7X10_STATUS);
 if (status < 0)
  return IRQ_HANDLED;

 if (status & ADT7X10_STAT_T_HIGH)
  sysfs_notify(&dev->kobj, ((void*)0), "temp1_max_alarm");
 if (status & ADT7X10_STAT_T_LOW)
  sysfs_notify(&dev->kobj, ((void*)0), "temp1_min_alarm");
 if (status & ADT7X10_STAT_T_CRIT)
  sysfs_notify(&dev->kobj, ((void*)0), "temp1_crit_alarm");

 return IRQ_HANDLED;
}
