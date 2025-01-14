
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u32 ;



__attribute__((used)) static unsigned int format_ccm_a0(u8 *pa0_buff, u32 header_size)
{
 unsigned int len = 0;

 if (header_size == 0)
  return 0;

 if (header_size < ((1UL << 16) - (1UL << 8))) {
  len = 2;

  pa0_buff[0] = (header_size >> 8) & 0xFF;
  pa0_buff[1] = header_size & 0xFF;
 } else {
  len = 6;

  pa0_buff[0] = 0xFF;
  pa0_buff[1] = 0xFE;
  pa0_buff[2] = (header_size >> 24) & 0xFF;
  pa0_buff[3] = (header_size >> 16) & 0xFF;
  pa0_buff[4] = (header_size >> 8) & 0xFF;
  pa0_buff[5] = header_size & 0xFF;
 }

 return len;
}
