
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_sa_client {int comp; int users; } ;


 int atomic_set (int *,int) ;
 int init_completion (int *) ;

void ib_sa_register_client(struct ib_sa_client *client)
{
 atomic_set(&client->users, 1);
 init_completion(&client->comp);
}
