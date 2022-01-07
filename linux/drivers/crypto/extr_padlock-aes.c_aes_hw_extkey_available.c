
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline int
aes_hw_extkey_available(uint8_t key_len)
{



 if (key_len == 16)
  return 1;
 return 0;
}
