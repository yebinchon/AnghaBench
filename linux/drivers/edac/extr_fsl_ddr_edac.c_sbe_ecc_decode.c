
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int calculate_ecc (int,int) ;
 int syndrome_from_bit (int) ;

__attribute__((used)) static void sbe_ecc_decode(u32 cap_high, u32 cap_low, u32 cap_ecc,
         int *bad_data_bit, int *bad_ecc_bit)
{
 int i;
 u8 syndrome;

 *bad_data_bit = -1;
 *bad_ecc_bit = -1;





 syndrome = calculate_ecc(cap_high, cap_low) ^ cap_ecc;


 for (i = 0; i < 64; i++) {
  if (syndrome == syndrome_from_bit(i)) {
   *bad_data_bit = i;
   return;
  }
 }


 for (i = 0; i < 8; i++) {
  if ((syndrome >> i) & 0x1) {
   *bad_ecc_bit = i;
   return;
  }
 }
}
