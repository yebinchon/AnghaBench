
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 am2315_crc(u8 *data, u8 nr_bytes)
{
 int i;
 u16 crc = 0xffff;

 while (nr_bytes--) {
  crc ^= *data++;
  for (i = 0; i < 8; i++) {
   if (crc & 0x01) {
    crc >>= 1;
    crc ^= 0xA001;
   } else {
    crc >>= 1;
   }
  }
 }

 return crc;
}
