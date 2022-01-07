
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct nic78bx_led_data {scalar_t__ io_base; } ;


 scalar_t__ NIC78BX_LOCK_REG_OFFSET ;
 int NIC78BX_LOCK_VALUE ;
 int outb (int ,scalar_t__) ;
 struct nic78bx_led_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int nic78bx_remove(struct platform_device *pdev)
{
 struct nic78bx_led_data *led_data = platform_get_drvdata(pdev);


 outb(NIC78BX_LOCK_VALUE,
      led_data->io_base + NIC78BX_LOCK_REG_OFFSET);

 return 0;
}
