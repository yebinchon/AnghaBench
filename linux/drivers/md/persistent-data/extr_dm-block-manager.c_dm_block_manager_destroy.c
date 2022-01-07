
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_block_manager {int bufio; } ;


 int dm_bufio_client_destroy (int ) ;
 int kfree (struct dm_block_manager*) ;

void dm_block_manager_destroy(struct dm_block_manager *bm)
{
 dm_bufio_client_destroy(bm->bufio);
 kfree(bm);
}
