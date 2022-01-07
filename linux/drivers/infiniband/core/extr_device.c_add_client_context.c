
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int client_data_rwsem; int client_data; int refcount; int kverbs_provider; } ;
struct ib_client {int client_id; int (* add ) (struct ib_device*) ;int uses; int no_kverbs_req; } ;


 int CLIENT_DATA_REGISTERED ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 int ib_client_put (struct ib_client*) ;
 int ib_device_put (struct ib_device*) ;
 int refcount_inc (int *) ;
 int refcount_inc_not_zero (int *) ;
 int stub1 (struct ib_device*) ;
 int up_read (int *) ;
 int up_write (int *) ;
 int xa_err (int ) ;
 scalar_t__ xa_get_mark (int *,int ,int ) ;
 int xa_set_mark (int *,int ,int ) ;
 int xa_store (int *,int ,int *,int ) ;

__attribute__((used)) static int add_client_context(struct ib_device *device,
         struct ib_client *client)
{
 int ret = 0;

 if (!device->kverbs_provider && !client->no_kverbs_req)
  return 0;

 down_write(&device->client_data_rwsem);




 if (!refcount_inc_not_zero(&client->uses))
  goto out_unlock;
 refcount_inc(&device->refcount);





 if (xa_get_mark(&device->client_data, client->client_id,
      CLIENT_DATA_REGISTERED))
  goto out;

 ret = xa_err(xa_store(&device->client_data, client->client_id, ((void*)0),
         GFP_KERNEL));
 if (ret)
  goto out;
 downgrade_write(&device->client_data_rwsem);
 if (client->add)
  client->add(device);


 xa_set_mark(&device->client_data, client->client_id,
      CLIENT_DATA_REGISTERED);
 up_read(&device->client_data_rwsem);
 return 0;

out:
 ib_device_put(device);
 ib_client_put(client);
out_unlock:
 up_write(&device->client_data_rwsem);
 return ret;
}
