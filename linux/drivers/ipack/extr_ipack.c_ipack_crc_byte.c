
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 ipack_crc_byte(u16 crc, u8 c)
{
 int i;

 crc ^= c << 8;
 for (i = 0; i < 8; i++)
  crc = (crc << 1) ^ ((crc & 0x8000) ? 0x1021 : 0);
 return crc;
}
