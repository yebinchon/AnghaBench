
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int flags; scalar_t__ key_size; int key; int * key_string; } ;


 int DM_CRYPT_KEY_VALID ;
 int EINVAL ;
 int clear_bit (int ,int *) ;
 int crypt_set_keyring_key (struct crypt_config*,char*) ;
 int crypt_setkey (struct crypt_config*) ;
 scalar_t__ hex2bin (int ,char*,scalar_t__) ;
 int kzfree (int *) ;
 int memset (char*,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int crypt_set_key(struct crypt_config *cc, char *key)
{
 int r = -EINVAL;
 int key_string_len = strlen(key);


 if (!cc->key_size && strcmp(key, "-"))
  goto out;


 if (key[0] == ':') {
  r = crypt_set_keyring_key(cc, key + 1);
  goto out;
 }


 clear_bit(DM_CRYPT_KEY_VALID, &cc->flags);


 kzfree(cc->key_string);
 cc->key_string = ((void*)0);


 if (cc->key_size && hex2bin(cc->key, key, cc->key_size) < 0)
  goto out;

 r = crypt_setkey(cc);
 if (!r)
  set_bit(DM_CRYPT_KEY_VALID, &cc->flags);

out:

 memset(key, '0', key_string_len);

 return r;
}
