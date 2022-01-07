
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity {int dummy; } ;
struct crypto_wait {int dummy; } ;
struct ahash_request {int dummy; } ;


 scalar_t__ unlikely (int) ;
 int verity_hash_final (struct dm_verity*,struct ahash_request*,int *,struct crypto_wait*) ;
 int verity_hash_init (struct dm_verity*,struct ahash_request*,struct crypto_wait*) ;
 int verity_hash_update (struct dm_verity*,struct ahash_request*,int const*,size_t,struct crypto_wait*) ;

int verity_hash(struct dm_verity *v, struct ahash_request *req,
  const u8 *data, size_t len, u8 *digest)
{
 int r;
 struct crypto_wait wait;

 r = verity_hash_init(v, req, &wait);
 if (unlikely(r < 0))
  goto out;

 r = verity_hash_update(v, req, data, len, &wait);
 if (unlikely(r < 0))
  goto out;

 r = verity_hash_final(v, req, digest, &wait);

out:
 return r;
}
