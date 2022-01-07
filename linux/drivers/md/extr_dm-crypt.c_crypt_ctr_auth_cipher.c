
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypto_ahash {int dummy; } ;
struct crypt_config {int authenc_key; int key_mac_size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_ahash*) ;
 int PTR_ERR (struct crypto_ahash*) ;
 int crypt_authenckey_size (struct crypt_config*) ;
 int crypto_ahash_digestsize (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_alloc_ahash (char*,int ,int ) ;
 int crypto_free_ahash (struct crypto_ahash*) ;
 int kfree (char*) ;
 int kmalloc (int ,int ) ;
 char* kzalloc (int,int ) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 int strstarts (char*,char*) ;

__attribute__((used)) static int crypt_ctr_auth_cipher(struct crypt_config *cc, char *cipher_api)
{
 char *start, *end, *mac_alg = ((void*)0);
 struct crypto_ahash *mac;

 if (!strstarts(cipher_api, "authenc("))
  return 0;

 start = strchr(cipher_api, '(');
 end = strchr(cipher_api, ',');
 if (!start || !end || ++start > end)
  return -EINVAL;

 mac_alg = kzalloc(end - start + 1, GFP_KERNEL);
 if (!mac_alg)
  return -ENOMEM;
 strncpy(mac_alg, start, end - start);

 mac = crypto_alloc_ahash(mac_alg, 0, 0);
 kfree(mac_alg);

 if (IS_ERR(mac))
  return PTR_ERR(mac);

 cc->key_mac_size = crypto_ahash_digestsize(mac);
 crypto_free_ahash(mac);

 cc->authenc_key = kmalloc(crypt_authenckey_size(cc), GFP_KERNEL);
 if (!cc->authenc_key)
  return -ENOMEM;

 return 0;
}
