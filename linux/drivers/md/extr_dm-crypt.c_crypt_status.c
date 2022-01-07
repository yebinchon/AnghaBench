
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_target {int num_discard_bios; struct crypt_config* private; } ;
struct crypt_config {unsigned int key_size; int sector_size; int cipher_flags; int cipher_auth; int on_disk_tag_size; int flags; scalar_t__ start; TYPE_1__* dev; scalar_t__ iv_offset; int * key; int key_string; int cipher_string; } ;
typedef int status_type_t ;
struct TYPE_2__ {int name; } ;


 int CRYPT_IV_LARGE_SECTORS ;
 int DMEMIT (char*,...) ;
 int DM_CRYPT_NO_OFFLOAD ;
 int DM_CRYPT_SAME_CPU ;
 int SECTOR_SHIFT ;


 int test_bit (int ,int *) ;

__attribute__((used)) static void crypt_status(struct dm_target *ti, status_type_t type,
    unsigned status_flags, char *result, unsigned maxlen)
{
 struct crypt_config *cc = ti->private;
 unsigned i, sz = 0;
 int num_feature_args = 0;

 switch (type) {
 case 129:
  result[0] = '\0';
  break;

 case 128:
  DMEMIT("%s ", cc->cipher_string);

  if (cc->key_size > 0) {
   if (cc->key_string)
    DMEMIT(":%u:%s", cc->key_size, cc->key_string);
   else
    for (i = 0; i < cc->key_size; i++)
     DMEMIT("%02x", cc->key[i]);
  } else
   DMEMIT("-");

  DMEMIT(" %llu %s %llu", (unsigned long long)cc->iv_offset,
    cc->dev->name, (unsigned long long)cc->start);

  num_feature_args += !!ti->num_discard_bios;
  num_feature_args += test_bit(DM_CRYPT_SAME_CPU, &cc->flags);
  num_feature_args += test_bit(DM_CRYPT_NO_OFFLOAD, &cc->flags);
  num_feature_args += cc->sector_size != (1 << SECTOR_SHIFT);
  num_feature_args += test_bit(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags);
  if (cc->on_disk_tag_size)
   num_feature_args++;
  if (num_feature_args) {
   DMEMIT(" %d", num_feature_args);
   if (ti->num_discard_bios)
    DMEMIT(" allow_discards");
   if (test_bit(DM_CRYPT_SAME_CPU, &cc->flags))
    DMEMIT(" same_cpu_crypt");
   if (test_bit(DM_CRYPT_NO_OFFLOAD, &cc->flags))
    DMEMIT(" submit_from_crypt_cpus");
   if (cc->on_disk_tag_size)
    DMEMIT(" integrity:%u:%s", cc->on_disk_tag_size, cc->cipher_auth);
   if (cc->sector_size != (1 << SECTOR_SHIFT))
    DMEMIT(" sector_size:%d", cc->sector_size);
   if (test_bit(CRYPT_IV_LARGE_SECTORS, &cc->cipher_flags))
    DMEMIT(" iv_large_sectors");
  }

  break;
 }
}
