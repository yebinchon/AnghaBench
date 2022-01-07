
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; struct crypt_config* private; } ;
struct crypt_config {int tfms_count; int key_parts; int iv_size; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int any_tfm (struct crypt_config*) ;
 int any_tfm_aead (struct crypt_config*) ;
 int crypt_alloc_tfms (struct crypt_config*,char*) ;
 int crypt_ctr_auth_cipher (struct crypt_config*,char*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 int crypto_aead_ivsize (int ) ;
 int crypto_skcipher_ivsize (int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key,
    char **ivmode, char **ivopts)
{
 struct crypt_config *cc = ti->private;
 char *tmp, *cipher_api, buf[CRYPTO_MAX_ALG_NAME];
 int ret = -EINVAL;

 cc->tfms_count = 1;





 tmp = &cipher_in[strlen("capi:")];


 *ivopts = strrchr(tmp, ':');
 if (*ivopts) {
  **ivopts = '\0';
  (*ivopts)++;
 }

 *ivmode = strrchr(tmp, '-');
 if (*ivmode) {
  **ivmode = '\0';
  (*ivmode)++;
 }

 cipher_api = tmp;


 if (crypt_integrity_aead(cc)) {
  ret = crypt_ctr_auth_cipher(cc, cipher_api);
  if (ret < 0) {
   ti->error = "Invalid AEAD cipher spec";
   return -ENOMEM;
  }
 }

 if (*ivmode && !strcmp(*ivmode, "lmk"))
  cc->tfms_count = 64;

 if (*ivmode && !strcmp(*ivmode, "essiv")) {
  if (!*ivopts) {
   ti->error = "Digest algorithm missing for ESSIV mode";
   return -EINVAL;
  }
  ret = snprintf(buf, CRYPTO_MAX_ALG_NAME, "essiv(%s,%s)",
          cipher_api, *ivopts);
  if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME) {
   ti->error = "Cannot allocate cipher string";
   return -ENOMEM;
  }
  cipher_api = buf;
 }

 cc->key_parts = cc->tfms_count;


 ret = crypt_alloc_tfms(cc, cipher_api);
 if (ret < 0) {
  ti->error = "Error allocating crypto tfm";
  return ret;
 }

 if (crypt_integrity_aead(cc))
  cc->iv_size = crypto_aead_ivsize(any_tfm_aead(cc));
 else
  cc->iv_size = crypto_skcipher_ivsize(any_tfm(cc));

 return 0;
}
