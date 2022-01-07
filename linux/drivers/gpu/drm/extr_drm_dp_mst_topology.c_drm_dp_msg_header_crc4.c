
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;



__attribute__((used)) static u8 drm_dp_msg_header_crc4(const uint8_t *data, size_t num_nibbles)
{
 u8 bitmask = 0x80;
 u8 bitshift = 7;
 u8 array_index = 0;
 int number_of_bits = num_nibbles * 4;
 u8 remainder = 0;

 while (number_of_bits != 0) {
  number_of_bits--;
  remainder <<= 1;
  remainder |= (data[array_index] & bitmask) >> bitshift;
  bitmask >>= 1;
  bitshift--;
  if (bitmask == 0) {
   bitmask = 0x80;
   bitshift = 7;
   array_index++;
  }
  if ((remainder & 0x10) == 0x10)
   remainder ^= 0x13;
 }

 number_of_bits = 4;
 while (number_of_bits != 0) {
  number_of_bits--;
  remainder <<= 1;
  if ((remainder & 0x10) != 0)
   remainder ^= 0x13;
 }

 return remainder;
}
