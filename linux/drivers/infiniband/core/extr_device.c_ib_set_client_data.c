
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int client_data; } ;
struct ib_client {int client_id; } ;


 int GFP_KERNEL ;
 int IS_ERR (void*) ;
 int WARN_ON (int ) ;
 int xa_is_err (void*) ;
 void* xa_store (int *,int ,void*,int ) ;

void ib_set_client_data(struct ib_device *device, struct ib_client *client,
   void *data)
{
 void *rc;

 if (WARN_ON(IS_ERR(data)))
  data = ((void*)0);

 rc = xa_store(&device->client_data, client->client_id, data,
        GFP_KERNEL);
 WARN_ON(xa_is_err(rc));
}
