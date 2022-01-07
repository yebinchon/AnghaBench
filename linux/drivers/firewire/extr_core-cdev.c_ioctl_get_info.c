
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fw_cdev_get_info {scalar_t__ rom; size_t rom_length; scalar_t__ bus_reset; int bus_reset_closure; int card; int version; } ;
union ioctl_arg {struct fw_cdev_get_info get_info; } ;
struct fw_cdev_event_bus_reset {int dummy; } ;
struct client {TYPE_2__* device; int link; int bus_reset_closure; int version; } ;
struct TYPE_4__ {int config_rom_length; int client_list_mutex; int client_list; struct fw_cdev_event_bus_reset* config_rom; TYPE_1__* card; } ;
struct TYPE_3__ {int index; } ;


 int EFAULT ;
 int FW_CDEV_KERNEL_VERSION ;
 unsigned long copy_to_user (int ,struct fw_cdev_event_bus_reset*,int) ;
 int down_read (int *) ;
 int fill_bus_reset_event (struct fw_cdev_event_bus_reset*,struct client*) ;
 int fw_device_rwsem ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int min (size_t,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int u64_to_uptr (scalar_t__) ;
 int up_read (int *) ;

__attribute__((used)) static int ioctl_get_info(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_get_info *a = &arg->get_info;
 struct fw_cdev_event_bus_reset bus_reset;
 unsigned long ret = 0;

 client->version = a->version;
 a->version = FW_CDEV_KERNEL_VERSION;
 a->card = client->device->card->index;

 down_read(&fw_device_rwsem);

 if (a->rom != 0) {
  size_t want = a->rom_length;
  size_t have = client->device->config_rom_length * 4;

  ret = copy_to_user(u64_to_uptr(a->rom),
       client->device->config_rom, min(want, have));
 }
 a->rom_length = client->device->config_rom_length * 4;

 up_read(&fw_device_rwsem);

 if (ret != 0)
  return -EFAULT;

 mutex_lock(&client->device->client_list_mutex);

 client->bus_reset_closure = a->bus_reset_closure;
 if (a->bus_reset != 0) {
  fill_bus_reset_event(&bus_reset, client);

  ret = copy_to_user(u64_to_uptr(a->bus_reset), &bus_reset, 36);
 }
 if (ret == 0 && list_empty(&client->link))
  list_add_tail(&client->link, &client->device->client_list);

 mutex_unlock(&client->device->client_list_mutex);

 return ret ? -EFAULT : 0;
}
