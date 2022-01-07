
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int L_SHIFT_1_MASK ;
 int L_SHIFT_2_MASK ;
 int L_SHIFT_4_MASK ;
 int R_SHIFT_1_MASK ;
 int R_SHIFT_2_MASK ;
 int R_SHIFT_4_MASK ;

__attribute__((used)) static inline u8 swap_bits_in_byte(u8 b)
{
 u8 n1;
 u8 n2;



 n1 = ((b & 0xc0) >> 4) | (b & ~(0xc0 >> 4));

 n1 = ((n1 & 0x28) >> 2) | (n1 & ~(0x28 >> 2));

 n1 = (n1 & 0x1e) >> 1;



 n2 = ((b & 0x03) << 4) | (b & ~(0x03 << 4));

 n2 = ((n2 & 0x14) << 2) | (n2 & ~(0x14 << 2));

 n2 = (n2 & 0x78) << 1;

 return n1 | n2;
}
