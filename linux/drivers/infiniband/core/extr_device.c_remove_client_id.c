
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_client {int client_id; } ;


 int clients ;
 int clients_rwsem ;
 int down_write (int *) ;
 scalar_t__ highest_client_id ;
 int up_write (int *) ;
 int xa_erase (int *,int ) ;
 scalar_t__ xa_load (int *,scalar_t__) ;

__attribute__((used)) static void remove_client_id(struct ib_client *client)
{
 down_write(&clients_rwsem);
 xa_erase(&clients, client->client_id);
 for (; highest_client_id; highest_client_id--)
  if (xa_load(&clients, highest_client_id - 1))
   break;
 up_write(&clients_rwsem);
}
