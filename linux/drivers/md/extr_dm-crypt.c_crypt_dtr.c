
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {struct crypt_config* private; } ;
struct crypt_config {int bio_alloc_lock; struct crypt_config* authenc_key; struct crypt_config* cipher_auth; struct crypt_config* key_string; struct crypt_config* cipher_string; scalar_t__ dev; TYPE_1__* iv_gen_ops; int n_allocated_pages; int tag_pool; int req_pool; int page_pool; int bs; scalar_t__ crypt_queue; scalar_t__ io_queue; scalar_t__ write_thread; } ;
struct TYPE_2__ {int (* dtr ) (struct crypt_config*) ;} ;


 int WARN_ON (int) ;
 int bioset_exit (int *) ;
 int crypt_calculate_pages_per_client () ;
 int crypt_free_tfms (struct crypt_config*) ;
 int destroy_workqueue (scalar_t__) ;
 int dm_crypt_clients_lock ;
 int dm_crypt_clients_n ;
 int dm_put_device (struct dm_target*,scalar_t__) ;
 int kthread_stop (scalar_t__) ;
 int kzfree (struct crypt_config*) ;
 int mempool_exit (int *) ;
 int mutex_destroy (int *) ;
 int percpu_counter_destroy (int *) ;
 scalar_t__ percpu_counter_sum (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct crypt_config*) ;

__attribute__((used)) static void crypt_dtr(struct dm_target *ti)
{
 struct crypt_config *cc = ti->private;

 ti->private = ((void*)0);

 if (!cc)
  return;

 if (cc->write_thread)
  kthread_stop(cc->write_thread);

 if (cc->io_queue)
  destroy_workqueue(cc->io_queue);
 if (cc->crypt_queue)
  destroy_workqueue(cc->crypt_queue);

 crypt_free_tfms(cc);

 bioset_exit(&cc->bs);

 mempool_exit(&cc->page_pool);
 mempool_exit(&cc->req_pool);
 mempool_exit(&cc->tag_pool);

 WARN_ON(percpu_counter_sum(&cc->n_allocated_pages) != 0);
 percpu_counter_destroy(&cc->n_allocated_pages);

 if (cc->iv_gen_ops && cc->iv_gen_ops->dtr)
  cc->iv_gen_ops->dtr(cc);

 if (cc->dev)
  dm_put_device(ti, cc->dev);

 kzfree(cc->cipher_string);
 kzfree(cc->key_string);
 kzfree(cc->cipher_auth);
 kzfree(cc->authenc_key);

 mutex_destroy(&cc->bio_alloc_lock);


 kzfree(cc);

 spin_lock(&dm_crypt_clients_lock);
 WARN_ON(!dm_crypt_clients_n);
 dm_crypt_clients_n--;
 crypt_calculate_pages_per_client();
 spin_unlock(&dm_crypt_clients_lock);
}
