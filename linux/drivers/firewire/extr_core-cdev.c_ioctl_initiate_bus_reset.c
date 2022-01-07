
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
union ioctl_arg {TYPE_2__ initiate_bus_reset; } ;
struct client {TYPE_1__* device; } ;
struct TYPE_3__ {int card; } ;


 scalar_t__ FW_CDEV_SHORT_RESET ;
 int fw_schedule_bus_reset (int ,int,int) ;

__attribute__((used)) static int ioctl_initiate_bus_reset(struct client *client, union ioctl_arg *arg)
{
 fw_schedule_bus_reset(client->device->card, 1,
   arg->initiate_bus_reset.type == FW_CDEV_SHORT_RESET);
 return 0;
}
