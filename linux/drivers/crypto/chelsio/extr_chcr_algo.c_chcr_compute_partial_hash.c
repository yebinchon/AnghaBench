
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct sha512_state {int state; } ;
struct sha256_state {int state; } ;
struct sha1_state {int state; } ;


 int EINVAL ;
 int SHA1_BLOCK_SIZE ;
 int SHA1_DIGEST_SIZE ;
 int SHA224_DIGEST_SIZE ;
 int SHA256_BLOCK_SIZE ;
 int SHA256_DIGEST_SIZE ;
 int SHA384_DIGEST_SIZE ;
 int SHA512_BLOCK_SIZE ;
 int SHA512_DIGEST_SIZE ;
 int crypto_shash_export (struct shash_desc*,void*) ;
 scalar_t__ crypto_shash_init (struct shash_desc*) ;
 scalar_t__ crypto_shash_update (struct shash_desc*,char*,int ) ;
 int memcpy (char*,int ,int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int chcr_compute_partial_hash(struct shash_desc *desc,
         char *iopad, char *result_hash,
         int digest_size)
{
 struct sha1_state sha1_st;
 struct sha256_state sha256_st;
 struct sha512_state sha512_st;
 int error;

 if (digest_size == SHA1_DIGEST_SIZE) {
  error = crypto_shash_init(desc) ?:
   crypto_shash_update(desc, iopad, SHA1_BLOCK_SIZE) ?:
   crypto_shash_export(desc, (void *)&sha1_st);
  memcpy(result_hash, sha1_st.state, SHA1_DIGEST_SIZE);
 } else if (digest_size == SHA224_DIGEST_SIZE) {
  error = crypto_shash_init(desc) ?:
   crypto_shash_update(desc, iopad, SHA256_BLOCK_SIZE) ?:
   crypto_shash_export(desc, (void *)&sha256_st);
  memcpy(result_hash, sha256_st.state, SHA256_DIGEST_SIZE);

 } else if (digest_size == SHA256_DIGEST_SIZE) {
  error = crypto_shash_init(desc) ?:
   crypto_shash_update(desc, iopad, SHA256_BLOCK_SIZE) ?:
   crypto_shash_export(desc, (void *)&sha256_st);
  memcpy(result_hash, sha256_st.state, SHA256_DIGEST_SIZE);

 } else if (digest_size == SHA384_DIGEST_SIZE) {
  error = crypto_shash_init(desc) ?:
   crypto_shash_update(desc, iopad, SHA512_BLOCK_SIZE) ?:
   crypto_shash_export(desc, (void *)&sha512_st);
  memcpy(result_hash, sha512_st.state, SHA512_DIGEST_SIZE);

 } else if (digest_size == SHA512_DIGEST_SIZE) {
  error = crypto_shash_init(desc) ?:
   crypto_shash_update(desc, iopad, SHA512_BLOCK_SIZE) ?:
   crypto_shash_export(desc, (void *)&sha512_st);
  memcpy(result_hash, sha512_st.state, SHA512_DIGEST_SIZE);
 } else {
  error = -EINVAL;
  pr_err("Unknown digest size %d\n", digest_size);
 }
 return error;
}
