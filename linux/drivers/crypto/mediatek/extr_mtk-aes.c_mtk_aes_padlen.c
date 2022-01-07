
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AES_BLOCK_SIZE ;

__attribute__((used)) static inline size_t mtk_aes_padlen(size_t len)
{
 len &= AES_BLOCK_SIZE - 1;
 return len ? AES_BLOCK_SIZE - len : 0;
}
