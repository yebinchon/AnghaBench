
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;


 unsigned int* ecc_table ;

__attribute__((used)) static u8 syndrome_from_bit(unsigned int bit) {
 int i;
 u8 syndrome = 0;






 for (i = bit < 32; i < 16; i += 2)
  syndrome |= ((ecc_table[i] >> (bit % 32)) & 1) << (i / 2);

 return syndrome;
}
