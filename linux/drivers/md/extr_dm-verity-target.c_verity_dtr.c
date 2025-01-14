
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {struct dm_verity* signature_key_desc; scalar_t__ data_dev; scalar_t__ hash_dev; struct dm_verity* alg_name; scalar_t__ tfm; struct dm_verity* zero_digest; struct dm_verity* root_digest; struct dm_verity* salt; int validated_blocks; scalar_t__ bufio; scalar_t__ verify_wq; } ;
struct dm_target {struct dm_verity* private; } ;


 int crypto_free_ahash (scalar_t__) ;
 int destroy_workqueue (scalar_t__) ;
 int dm_bufio_client_destroy (scalar_t__) ;
 int dm_put_device (struct dm_target*,scalar_t__) ;
 int kfree (struct dm_verity*) ;
 int kvfree (int ) ;
 int verity_fec_dtr (struct dm_verity*) ;

__attribute__((used)) static void verity_dtr(struct dm_target *ti)
{
 struct dm_verity *v = ti->private;

 if (v->verify_wq)
  destroy_workqueue(v->verify_wq);

 if (v->bufio)
  dm_bufio_client_destroy(v->bufio);

 kvfree(v->validated_blocks);
 kfree(v->salt);
 kfree(v->root_digest);
 kfree(v->zero_digest);

 if (v->tfm)
  crypto_free_ahash(v->tfm);

 kfree(v->alg_name);

 if (v->hash_dev)
  dm_put_device(ti, v->hash_dev);

 if (v->data_dev)
  dm_put_device(ti, v->data_dev);

 verity_fec_dtr(v);

 kfree(v->signature_key_desc);

 kfree(v);
}
