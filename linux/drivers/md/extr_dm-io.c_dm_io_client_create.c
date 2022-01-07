
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_io_client {int pool; int bios; } ;


 int BIOSET_NEED_BVECS ;
 int ENOMEM ;
 struct dm_io_client* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int _dm_io_cache ;
 int bioset_init (int *,unsigned int,int ,int ) ;
 unsigned int dm_get_reserved_bio_based_ios () ;
 int kfree (struct dm_io_client*) ;
 struct dm_io_client* kzalloc (int,int ) ;
 int mempool_exit (int *) ;
 int mempool_init_slab_pool (int *,unsigned int,int ) ;

struct dm_io_client *dm_io_client_create(void)
{
 struct dm_io_client *client;
 unsigned min_ios = dm_get_reserved_bio_based_ios();
 int ret;

 client = kzalloc(sizeof(*client), GFP_KERNEL);
 if (!client)
  return ERR_PTR(-ENOMEM);

 ret = mempool_init_slab_pool(&client->pool, min_ios, _dm_io_cache);
 if (ret)
  goto bad;

 ret = bioset_init(&client->bios, min_ios, 0, BIOSET_NEED_BVECS);
 if (ret)
  goto bad;

 return client;

   bad:
 mempool_exit(&client->pool);
 kfree(client);
 return ERR_PTR(ret);
}
