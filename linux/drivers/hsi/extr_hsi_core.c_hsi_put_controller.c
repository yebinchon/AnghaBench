
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hsi_controller {unsigned int num_ports; int device; TYPE_1__** port; } ;
struct TYPE_2__ {int device; } ;


 int put_device (int *) ;

void hsi_put_controller(struct hsi_controller *hsi)
{
 unsigned int i;

 if (!hsi)
  return;

 for (i = 0; i < hsi->num_ports; i++)
  if (hsi->port && hsi->port[i])
   put_device(&hsi->port[i]->device);
 put_device(&hsi->device);
}
