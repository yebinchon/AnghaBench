
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int crypt_set_keyring_key(struct crypt_config *cc, const char *key_string)
{
 return -EINVAL;
}
