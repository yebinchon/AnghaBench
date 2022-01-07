
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int flexi_aes_keylen(int keylen)
{
 int aes_keylen;

 switch (keylen) {
 case 130:
  aes_keylen = 1;
  break;
 case 129:
  aes_keylen = 2;
  break;
 case 128:
  aes_keylen = 3;
  break;
 default:
  aes_keylen = -EINVAL;
  break;
 }
 return aes_keylen;
}
