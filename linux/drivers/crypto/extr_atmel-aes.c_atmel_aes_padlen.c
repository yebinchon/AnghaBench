
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t atmel_aes_padlen(size_t len, size_t block_size)
{
 len &= block_size - 1;
 return len ? block_size - len : 0;
}
