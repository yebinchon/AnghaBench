
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static bool zynq_fpga_has_sync(const u8 *buf, size_t count)
{
 for (; count >= 4; buf += 4, count -= 4)
  if (buf[0] == 0x66 && buf[1] == 0x55 && buf[2] == 0x99 &&
      buf[3] == 0xaa)
   return 1;
 return 0;
}
