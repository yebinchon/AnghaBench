
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int CR_INIT_REENUMERATE ;
 int CR_NEXT_REENUMERATE ;
 int CR_SET_BRIGHTNESS ;

__attribute__((used)) static void cr0014114_calc_crc(u8 *buf, const size_t len)
{
 size_t i;
 u8 crc;

 for (i = 1, crc = 1; i < len - 1; i++)
  crc += buf[i];
 crc |= BIT(7);


 if (crc == CR_SET_BRIGHTNESS ||
     crc == CR_INIT_REENUMERATE ||
     crc == CR_NEXT_REENUMERATE)
  crc = 0xfe;

 buf[len - 1] = crc;
}
