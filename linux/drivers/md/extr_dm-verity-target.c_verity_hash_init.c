
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_verity {int version; scalar_t__ salt_size; int salt; int tfm; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_BACKLOG ;
 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 int DMERR (char*,int) ;
 int ahash_request_set_callback (struct ahash_request*,int,int ,void*) ;
 int ahash_request_set_tfm (struct ahash_request*,int ) ;
 int crypto_ahash_init (struct ahash_request*) ;
 int crypto_init_wait (struct crypto_wait*) ;
 int crypto_req_done ;
 int crypto_wait_req (int ,struct crypto_wait*) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;
 int verity_hash_update (struct dm_verity*,struct ahash_request*,int ,scalar_t__,struct crypto_wait*) ;

__attribute__((used)) static int verity_hash_init(struct dm_verity *v, struct ahash_request *req,
    struct crypto_wait *wait)
{
 int r;

 ahash_request_set_tfm(req, v->tfm);
 ahash_request_set_callback(req, CRYPTO_TFM_REQ_MAY_SLEEP |
     CRYPTO_TFM_REQ_MAY_BACKLOG,
     crypto_req_done, (void *)wait);
 crypto_init_wait(wait);

 r = crypto_wait_req(crypto_ahash_init(req), wait);

 if (unlikely(r < 0)) {
  DMERR("crypto_ahash_init failed: %d", r);
  return r;
 }

 if (likely(v->salt_size && (v->version >= 1)))
  r = verity_hash_update(v, req, v->salt, v->salt_size, wait);

 return r;
}
