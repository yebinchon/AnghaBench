
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* parent; } ;
struct hsi_controller {unsigned int num_ports; TYPE_2__ device; TYPE_1__** port; } ;
struct TYPE_4__ {TYPE_2__ device; } ;


 int device_add (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int hsi_scan_board_info (struct hsi_controller*) ;

int hsi_register_controller(struct hsi_controller *hsi)
{
 unsigned int i;
 int err;

 err = device_add(&hsi->device);
 if (err < 0)
  return err;
 for (i = 0; i < hsi->num_ports; i++) {
  hsi->port[i]->device.parent = &hsi->device;
  err = device_add(&hsi->port[i]->device);
  if (err < 0)
   goto out;
 }

 hsi_scan_board_info(hsi);

 return 0;
out:
 while (i-- > 0)
  device_del(&hsi->port[i]->device);
 device_del(&hsi->device);

 return err;
}
