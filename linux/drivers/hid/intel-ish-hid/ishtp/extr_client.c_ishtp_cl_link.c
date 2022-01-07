
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_device {scalar_t__ open_handle_count; scalar_t__ dev_state; int device_lock; int cl_list_lock; int host_clients_map; int cl_list; } ;
struct ishtp_cl {int host_client_id; int state; int link; TYPE_1__* device; struct ishtp_device* dev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int EMFILE ;
 int ENODEV ;
 int ENOENT ;
 int ISHTP_CLIENTS_MAX ;
 int ISHTP_CL_INITIALIZING ;
 scalar_t__ ISHTP_DEV_ENABLED ;
 scalar_t__ ISHTP_MAX_OPEN_HANDLE_COUNT ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int *,char*,int) ;
 int find_first_zero_bit (int ,int) ;
 int list_add_tail (int *,int *) ;
 int set_bit (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ishtp_cl_link(struct ishtp_cl *cl)
{
 struct ishtp_device *dev;
 unsigned long flags, flags_cl;
 int id, ret = 0;

 if (WARN_ON(!cl || !cl->dev))
  return -EINVAL;

 dev = cl->dev;

 spin_lock_irqsave(&dev->device_lock, flags);

 if (dev->open_handle_count >= ISHTP_MAX_OPEN_HANDLE_COUNT) {
  ret = -EMFILE;
  goto unlock_dev;
 }

 id = find_first_zero_bit(dev->host_clients_map, ISHTP_CLIENTS_MAX);

 if (id >= ISHTP_CLIENTS_MAX) {
  spin_unlock_irqrestore(&dev->device_lock, flags);
  dev_err(&cl->device->dev, "id exceeded %d", ISHTP_CLIENTS_MAX);
  return -ENOENT;
 }

 dev->open_handle_count++;
 cl->host_client_id = id;
 spin_lock_irqsave(&dev->cl_list_lock, flags_cl);
 if (dev->dev_state != ISHTP_DEV_ENABLED) {
  ret = -ENODEV;
  goto unlock_cl;
 }
 list_add_tail(&cl->link, &dev->cl_list);
 set_bit(id, dev->host_clients_map);
 cl->state = ISHTP_CL_INITIALIZING;

unlock_cl:
 spin_unlock_irqrestore(&dev->cl_list_lock, flags_cl);
unlock_dev:
 spin_unlock_irqrestore(&dev->device_lock, flags);
 return ret;
}
