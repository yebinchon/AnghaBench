
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; struct crypt_config* private; } ;
struct crypt_config {int tfms_count; int key_parts; } ;


 int CRYPTO_MAX_ALG_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int crypt_alloc_tfms (struct crypt_config*,char*) ;
 scalar_t__ crypt_integrity_aead (struct crypt_config*) ;
 int is_power_of_2 (int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int sscanf (char*,char*,int*,char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int crypt_ctr_cipher_old(struct dm_target *ti, char *cipher_in, char *key,
    char **ivmode, char **ivopts)
{
 struct crypt_config *cc = ti->private;
 char *tmp, *cipher, *chainmode, *keycount;
 char *cipher_api = ((void*)0);
 int ret = -EINVAL;
 char dummy;

 if (strchr(cipher_in, '(') || crypt_integrity_aead(cc)) {
  ti->error = "Bad cipher specification";
  return -EINVAL;
 }





 tmp = cipher_in;
 keycount = strsep(&tmp, "-");
 cipher = strsep(&keycount, ":");

 if (!keycount)
  cc->tfms_count = 1;
 else if (sscanf(keycount, "%u%c", &cc->tfms_count, &dummy) != 1 ||
   !is_power_of_2(cc->tfms_count)) {
  ti->error = "Bad cipher key count specification";
  return -EINVAL;
 }
 cc->key_parts = cc->tfms_count;

 chainmode = strsep(&tmp, "-");
 *ivmode = strsep(&tmp, ":");
 *ivopts = tmp;





 if (!chainmode || (!strcmp(chainmode, "plain") && !*ivmode)) {
  chainmode = "cbc";
  *ivmode = "plain";
 }

 if (strcmp(chainmode, "ecb") && !*ivmode) {
  ti->error = "IV mechanism required";
  return -EINVAL;
 }

 cipher_api = kmalloc(CRYPTO_MAX_ALG_NAME, GFP_KERNEL);
 if (!cipher_api)
  goto bad_mem;

 if (*ivmode && !strcmp(*ivmode, "essiv")) {
  if (!*ivopts) {
   ti->error = "Digest algorithm missing for ESSIV mode";
   kfree(cipher_api);
   return -EINVAL;
  }
  ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
          "essiv(%s(%s),%s)", chainmode, cipher, *ivopts);
 } else {
  ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
          "%s(%s)", chainmode, cipher);
 }
 if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME) {
  kfree(cipher_api);
  goto bad_mem;
 }


 ret = crypt_alloc_tfms(cc, cipher_api);
 if (ret < 0) {
  ti->error = "Error allocating crypto tfm";
  kfree(cipher_api);
  return ret;
 }
 kfree(cipher_api);

 return 0;
bad_mem:
 ti->error = "Cannot allocate cipher strings";
 return -ENOMEM;
}
