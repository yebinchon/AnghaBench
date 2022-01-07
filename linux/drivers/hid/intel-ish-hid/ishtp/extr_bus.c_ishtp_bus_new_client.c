
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ishtp_device {int fw_client_presentation_num; TYPE_2__* fw_clients; } ;
struct ishtp_cl_device {int dummy; } ;
typedef int guid_t ;
struct TYPE_3__ {int protocol_name; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ishtp_cl_device* ishtp_bus_add_device (struct ishtp_device*,int ,char*) ;
 char* kasprintf (int ,char*,int *) ;
 int kfree (char*) ;

int ishtp_bus_new_client(struct ishtp_device *dev)
{
 int i;
 char *dev_name;
 struct ishtp_cl_device *cl_device;
 guid_t device_uuid;







 i = dev->fw_client_presentation_num - 1;
 device_uuid = dev->fw_clients[i].props.protocol_name;
 dev_name = kasprintf(GFP_KERNEL, "{%pUL}", &device_uuid);
 if (!dev_name)
  return -ENOMEM;

 cl_device = ishtp_bus_add_device(dev, device_uuid, dev_name);
 if (!cl_device) {
  kfree(dev_name);
  return -ENOENT;
 }

 kfree(dev_name);

 return 0;
}
