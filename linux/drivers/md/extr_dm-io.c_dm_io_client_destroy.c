
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_io_client {int bios; int pool; } ;


 int bioset_exit (int *) ;
 int kfree (struct dm_io_client*) ;
 int mempool_exit (int *) ;

void dm_io_client_destroy(struct dm_io_client *client)
{
 mempool_exit(&client->pool);
 bioset_exit(&client->bios);
 kfree(client);
}
