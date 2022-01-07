
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fixed_address; } ;
struct ishtp_fw_client {TYPE_1__ props; } ;
struct ishtp_device {struct ishtp_fw_client* fw_clients; int fw_clients_lock; } ;
typedef int guid_t ;


 int ishtp_fw_cl_by_uuid (struct ishtp_device*,int const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct ishtp_fw_client *ishtp_fw_cl_get_client(struct ishtp_device *dev,
            const guid_t *uuid)
{
 int i;
 unsigned long flags;

 spin_lock_irqsave(&dev->fw_clients_lock, flags);
 i = ishtp_fw_cl_by_uuid(dev, uuid);
 spin_unlock_irqrestore(&dev->fw_clients_lock, flags);
 if (i < 0 || dev->fw_clients[i].props.fixed_address)
  return ((void*)0);

 return &dev->fw_clients[i];
}
