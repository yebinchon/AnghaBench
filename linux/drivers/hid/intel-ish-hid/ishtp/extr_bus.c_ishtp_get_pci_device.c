
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_device {TYPE_1__* ishtp_dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* devc; } ;



struct device *ishtp_get_pci_device(struct ishtp_cl_device *device)
{
 return device->ishtp_dev->devc;
}
