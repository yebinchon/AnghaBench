
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_client {int client_id; } ;


 int CLIENT_REGISTERED ;
 int GFP_KERNEL ;
 int clients ;
 int clients_rwsem ;
 int down_write (int *) ;
 int highest_client_id ;
 int up_write (int *) ;
 int xa_insert (int *,int ,struct ib_client*,int ) ;
 int xa_set_mark (int *,int ,int ) ;

__attribute__((used)) static int assign_client_id(struct ib_client *client)
{
 int ret;

 down_write(&clients_rwsem);





 client->client_id = highest_client_id;
 ret = xa_insert(&clients, client->client_id, client, GFP_KERNEL);
 if (ret)
  goto out;

 highest_client_id++;
 xa_set_mark(&clients, client->client_id, CLIENT_REGISTERED);

out:
 up_write(&clients_rwsem);
 return ret;
}
