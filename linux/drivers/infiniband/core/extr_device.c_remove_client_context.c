
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int client_data; int client_data_rwsem; } ;
struct ib_client {int (* remove ) (struct ib_device*,void*) ;} ;


 int CLIENT_DATA_REGISTERED ;
 int clients ;
 int down_write (int *) ;
 int ib_client_put (struct ib_client*) ;
 int ib_device_put (struct ib_device*) ;
 int stub1 (struct ib_device*,void*) ;
 int up_write (int *) ;
 int xa_clear_mark (int *,unsigned int,int ) ;
 int xa_erase (int *,unsigned int) ;
 int xa_get_mark (int *,unsigned int,int ) ;
 void* xa_load (int *,unsigned int) ;

__attribute__((used)) static void remove_client_context(struct ib_device *device,
      unsigned int client_id)
{
 struct ib_client *client;
 void *client_data;

 down_write(&device->client_data_rwsem);
 if (!xa_get_mark(&device->client_data, client_id,
    CLIENT_DATA_REGISTERED)) {
  up_write(&device->client_data_rwsem);
  return;
 }
 client_data = xa_load(&device->client_data, client_id);
 xa_clear_mark(&device->client_data, client_id, CLIENT_DATA_REGISTERED);
 client = xa_load(&clients, client_id);
 up_write(&device->client_data_rwsem);
 if (client->remove)
  client->remove(device, client_data);

 xa_erase(&device->client_data, client_id);
 ib_device_put(device);
 ib_client_put(client);
}
