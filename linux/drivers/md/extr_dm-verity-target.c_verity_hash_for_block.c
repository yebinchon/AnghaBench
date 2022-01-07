
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dm_verity_io {int dummy; } ;
struct dm_verity {int levels; int digest_size; scalar_t__ zero_digest; int root_digest; } ;
typedef int sector_t ;


 scalar_t__ likely (int) ;
 int memcmp (scalar_t__,int *,int ) ;
 int memcpy (int *,int ,int ) ;
 scalar_t__ unlikely (int) ;
 int verity_verify_level (struct dm_verity*,struct dm_verity_io*,int ,int,int,int *) ;

int verity_hash_for_block(struct dm_verity *v, struct dm_verity_io *io,
     sector_t block, u8 *digest, bool *is_zero)
{
 int r = 0, i;

 if (likely(v->levels)) {







  r = verity_verify_level(v, io, block, 0, 1, digest);
  if (likely(r <= 0))
   goto out;
 }

 memcpy(digest, v->root_digest, v->digest_size);

 for (i = v->levels - 1; i >= 0; i--) {
  r = verity_verify_level(v, io, block, i, 0, digest);
  if (unlikely(r))
   goto out;
 }
out:
 if (!r && v->zero_digest)
  *is_zero = !memcmp(v->zero_digest, digest, v->digest_size);
 else
  *is_zero = 0;

 return r;
}
