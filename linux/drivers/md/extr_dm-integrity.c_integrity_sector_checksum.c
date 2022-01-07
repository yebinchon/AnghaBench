
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct dm_integrity_c {int sectors_per_block; unsigned int tag_size; int internal_hash; } ;
typedef int sector_t ;
typedef char __u8 ;
typedef int __u64 ;
struct TYPE_6__ {int tfm; } ;


 int SECTOR_SHIFT ;
 int SHASH_DESC_ON_STACK (TYPE_1__*,int ) ;
 int cpu_to_le64 (int ) ;
 unsigned int crypto_shash_digestsize (int ) ;
 int crypto_shash_final (TYPE_1__*,char*) ;
 int crypto_shash_init (TYPE_1__*) ;
 int crypto_shash_update (TYPE_1__*,char const*,int) ;
 int dm_integrity_io_error (struct dm_integrity_c*,char*,int) ;
 int get_random_bytes (char*,unsigned int) ;
 int memset (char*,int ,unsigned int) ;
 TYPE_1__* req ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void integrity_sector_checksum(struct dm_integrity_c *ic, sector_t sector,
          const char *data, char *result)
{
 __u64 sector_le = cpu_to_le64(sector);
 SHASH_DESC_ON_STACK(req, ic->internal_hash);
 int r;
 unsigned digest_size;

 req->tfm = ic->internal_hash;

 r = crypto_shash_init(req);
 if (unlikely(r < 0)) {
  dm_integrity_io_error(ic, "crypto_shash_init", r);
  goto failed;
 }

 r = crypto_shash_update(req, (const __u8 *)&sector_le, sizeof sector_le);
 if (unlikely(r < 0)) {
  dm_integrity_io_error(ic, "crypto_shash_update", r);
  goto failed;
 }

 r = crypto_shash_update(req, data, ic->sectors_per_block << SECTOR_SHIFT);
 if (unlikely(r < 0)) {
  dm_integrity_io_error(ic, "crypto_shash_update", r);
  goto failed;
 }

 r = crypto_shash_final(req, result);
 if (unlikely(r < 0)) {
  dm_integrity_io_error(ic, "crypto_shash_final", r);
  goto failed;
 }

 digest_size = crypto_shash_digestsize(ic->internal_hash);
 if (unlikely(digest_size < ic->tag_size))
  memset(result + digest_size, 0, ic->tag_size - digest_size);

 return;

failed:

 get_random_bytes(result, ic->tag_size);
}
