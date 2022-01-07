
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ipack_device {unsigned int id_avail; int * id; } ;


 int ipack_crc_byte (int,int ) ;

__attribute__((used)) static u16 ipack_calc_crc2(struct ipack_device *dev)
{
 u8 c;
 u16 crc;
 unsigned int i;

 crc = 0xffff;
 for (i = 0; i < dev->id_avail; i++) {
  c = ((i != 0x18) && (i != 0x19)) ? dev->id[i] : 0;
  crc = ipack_crc_byte(crc, c);
 }
 crc = ~crc;
 return crc;
}
