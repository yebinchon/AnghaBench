
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga_switcheroo_client {int pwr_state; TYPE_1__* pdev; scalar_t__ driver_power_control; } ;
typedef enum vga_switcheroo_state { ____Placeholder_vga_switcheroo_state } vga_switcheroo_state ;
struct TYPE_2__ {int dev; } ;


 int VGA_SWITCHEROO_OFF ;
 int VGA_SWITCHEROO_ON ;
 scalar_t__ pm_runtime_active (int *) ;
 scalar_t__ pm_runtime_enabled (int *) ;

__attribute__((used)) static enum vga_switcheroo_state
vga_switcheroo_pwr_state(struct vga_switcheroo_client *client)
{
 if (client->driver_power_control)
  if (pm_runtime_enabled(&client->pdev->dev) &&
      pm_runtime_active(&client->pdev->dev))
   return VGA_SWITCHEROO_ON;
  else
   return VGA_SWITCHEROO_OFF;
 else
  return client->pwr_state;
}
