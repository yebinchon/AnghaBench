
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 size_t* aes_sbox ;

__attribute__((used)) static inline u32 aes_ks_subword(const u32 w)
{
 u8 bytes[4];

 *(u32 *)(&bytes[0]) = w;
 bytes[0] = aes_sbox[bytes[0]];
 bytes[1] = aes_sbox[bytes[1]];
 bytes[2] = aes_sbox[bytes[2]];
 bytes[3] = aes_sbox[bytes[3]];
 return *(u32 *)(&bytes[0]);
}
