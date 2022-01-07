
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity_fec {scalar_t__ dev; scalar_t__ bufio; scalar_t__ data_bufio; int cache; int extra_pool; int prealloc_pool; int rs_pool; } ;
struct dm_verity {struct dm_verity_fec* fec; int ti; } ;


 int dm_bufio_client_destroy (scalar_t__) ;
 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct dm_verity_fec*) ;
 int kmem_cache_destroy (int ) ;
 int mempool_exit (int *) ;
 int verity_fec_is_enabled (struct dm_verity*) ;

void verity_fec_dtr(struct dm_verity *v)
{
 struct dm_verity_fec *f = v->fec;

 if (!verity_fec_is_enabled(v))
  goto out;

 mempool_exit(&f->rs_pool);
 mempool_exit(&f->prealloc_pool);
 mempool_exit(&f->extra_pool);
 kmem_cache_destroy(f->cache);

 if (f->data_bufio)
  dm_bufio_client_destroy(f->data_bufio);
 if (f->bufio)
  dm_bufio_client_destroy(f->bufio);

 if (f->dev)
  dm_put_device(v->ti, f->dev);
out:
 kfree(f);
 v->fec = ((void*)0);
}
