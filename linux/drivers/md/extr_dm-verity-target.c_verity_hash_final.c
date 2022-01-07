
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity {scalar_t__ salt_size; int salt; int version; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;


 int DMERR (char*,int) ;
 int ahash_request_set_crypt (struct ahash_request*,int *,int *,int ) ;
 int crypto_ahash_final (struct ahash_request*) ;
 int crypto_wait_req (int ,struct crypto_wait*) ;
 scalar_t__ unlikely (int) ;
 int verity_hash_update (struct dm_verity*,struct ahash_request*,int ,scalar_t__,struct crypto_wait*) ;

__attribute__((used)) static int verity_hash_final(struct dm_verity *v, struct ahash_request *req,
        u8 *digest, struct crypto_wait *wait)
{
 int r;

 if (unlikely(v->salt_size && (!v->version))) {
  r = verity_hash_update(v, req, v->salt, v->salt_size, wait);

  if (r < 0) {
   DMERR("verity_hash_final failed updating salt: %d", r);
   goto out;
  }
 }

 ahash_request_set_crypt(req, ((void*)0), digest, 0);
 r = crypto_wait_req(crypto_ahash_final(req), wait);
out:
 return r;
}
