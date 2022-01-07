
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_config {int key_size; int key_extra_size; int tfms_count; } ;


 int ilog2 (int ) ;

__attribute__((used)) static unsigned crypt_subkey_size(struct crypt_config *cc)
{
 return (cc->key_size - cc->key_extra_size) >> ilog2(cc->tfms_count);
}
