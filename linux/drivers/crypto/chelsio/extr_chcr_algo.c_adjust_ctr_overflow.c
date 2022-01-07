
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int __be32 ;


 int AES_BLOCK_SIZE ;
 int be32_to_cpu (int ) ;

__attribute__((used)) static unsigned int adjust_ctr_overflow(u8 *iv, u32 bytes)
{
 __be32 *b = (__be32 *)(iv + AES_BLOCK_SIZE);
 u64 c;
 u32 temp = be32_to_cpu(*--b);

 temp = ~temp;
 c = (u64)temp + 1;
 if ((bytes / AES_BLOCK_SIZE) > c)
  bytes = c * AES_BLOCK_SIZE;
 return bytes;
}
