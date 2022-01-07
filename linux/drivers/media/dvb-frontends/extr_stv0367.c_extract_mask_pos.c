
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static void extract_mask_pos(u32 label, u8 *mask, u8 *pos)
{
 u8 position = 0, i = 0;

 (*mask) = label & 0xff;

 while ((position == 0) && (i < 8)) {
  position = ((*mask) >> i) & 0x01;
  i++;
 }

 (*pos) = (i - 1);
}
