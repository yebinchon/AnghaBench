
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ishtp_device {unsigned int fw_clients_num; TYPE_2__* fw_clients; } ;
typedef int guid_t ;
struct TYPE_3__ {int protocol_name; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int ENOENT ;
 scalar_t__ guid_equal (int const*,int *) ;

int ishtp_fw_cl_by_uuid(struct ishtp_device *dev, const guid_t *uuid)
{
 unsigned int i;

 for (i = 0; i < dev->fw_clients_num; ++i) {
  if (guid_equal(uuid, &dev->fw_clients[i].props.protocol_name))
   return i;
 }
 return -ENOENT;
}
