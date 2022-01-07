
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct led_classdev_flash {int dummy; } ;


 int call_flash_op (struct led_classdev_flash*,int ,int *) ;
 int fault_get ;

int led_get_flash_fault(struct led_classdev_flash *fled_cdev, u32 *fault)
{
 return call_flash_op(fled_cdev, fault_get, fault);
}
