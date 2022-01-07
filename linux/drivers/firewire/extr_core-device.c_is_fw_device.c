
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int fw_device_type ;

__attribute__((used)) static bool is_fw_device(struct device *dev)
{
 return dev->type == &fw_device_type;
}
