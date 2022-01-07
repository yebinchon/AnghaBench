
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vga_switcheroo_client {int pwr_state; int id; int pdev; TYPE_1__* ops; scalar_t__ driver_power_control; } ;
struct TYPE_6__ {TYPE_2__* handler; } ;
struct TYPE_5__ {int (* power_state ) (int ,int ) ;} ;
struct TYPE_4__ {int (* set_gpu_state ) (int ,int ) ;} ;


 int VGA_SWITCHEROO_OFF ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 TYPE_3__ vgasr_priv ;

__attribute__((used)) static int vga_switchoff(struct vga_switcheroo_client *client)
{
 if (client->driver_power_control)
  return 0;

 client->ops->set_gpu_state(client->pdev, VGA_SWITCHEROO_OFF);
 if (vgasr_priv.handler->power_state)
  vgasr_priv.handler->power_state(client->id, VGA_SWITCHEROO_OFF);
 client->pwr_state = VGA_SWITCHEROO_OFF;
 return 0;
}
