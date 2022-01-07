
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bochs_device {scalar_t__ mmio; } ;


 unsigned int EDID_LENGTH ;
 int readb (scalar_t__) ;

__attribute__((used)) static int bochs_get_edid_block(void *data, u8 *buf,
    unsigned int block, size_t len)
{
 struct bochs_device *bochs = data;
 size_t i, start = block * EDID_LENGTH;

 if (start + len > 0x400 )
  return -1;

 for (i = 0; i < len; i++) {
  buf[i] = readb(bochs->mmio + start + i);
 }
 return 0;
}
