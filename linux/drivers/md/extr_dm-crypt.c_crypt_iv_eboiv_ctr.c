
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; } ;
struct crypt_config {scalar_t__ iv_size; int cipher_flags; } ;


 int CRYPT_MODE_INTEGRITY_AEAD ;
 int EINVAL ;
 int any_tfm (struct crypt_config*) ;
 scalar_t__ crypto_skcipher_blocksize (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int crypt_iv_eboiv_ctr(struct crypt_config *cc, struct dm_target *ti,
       const char *opts)
{
 if (test_bit(CRYPT_MODE_INTEGRITY_AEAD, &cc->cipher_flags)) {
  ti->error = "AEAD transforms not supported for EBOIV";
  return -EINVAL;
 }

 if (crypto_skcipher_blocksize(any_tfm(cc)) != cc->iv_size) {
  ti->error = "Block size of EBOIV cipher does "
       "not match IV size of block cipher";
  return -EINVAL;
 }

 return 0;
}
