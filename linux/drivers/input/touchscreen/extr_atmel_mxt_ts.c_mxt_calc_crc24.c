
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void mxt_calc_crc24(u32 *crc, u8 firstbyte, u8 secondbyte)
{
 static const unsigned int crcpoly = 0x80001B;
 u32 result;
 u32 data_word;

 data_word = (secondbyte << 8) | firstbyte;
 result = ((*crc << 1) ^ data_word);

 if (result & 0x1000000)
  result ^= crcpoly;

 *crc = result;
}
