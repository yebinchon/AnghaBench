
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_unit {int dummy; } ;
struct device {int dummy; } ;


 int fw_device_put (int ) ;
 int fw_parent_device (struct fw_unit*) ;
 struct fw_unit* fw_unit (struct device*) ;
 int kfree (struct fw_unit*) ;

__attribute__((used)) static void fw_unit_release(struct device *dev)
{
 struct fw_unit *unit = fw_unit(dev);

 fw_device_put(fw_parent_device(unit));
 kfree(unit);
}
