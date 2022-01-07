
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WARN_ON (int) ;

__attribute__((used)) static int picolcd_fb_update_tile(u8 *vbitmap, const u8 *bitmap, int bpp,
  int chip, int tile)
{
 int i, b, changed = 0;
 u8 tdata[64];
 u8 *vdata = vbitmap + (tile * 4 + chip) * 64;

 if (bpp == 1) {
  for (b = 7; b >= 0; b--) {
   const u8 *bdata = bitmap + tile * 256 + chip * 8 + b * 32;
   for (i = 0; i < 64; i++) {
    tdata[i] <<= 1;
    tdata[i] |= (bdata[i/8] >> (i % 8)) & 0x01;
   }
  }
 } else if (bpp == 8) {
  for (b = 7; b >= 0; b--) {
   const u8 *bdata = bitmap + (tile * 256 + chip * 8 + b * 32) * 8;
   for (i = 0; i < 64; i++) {
    tdata[i] <<= 1;
    tdata[i] |= (bdata[i] & 0x80) ? 0x01 : 0x00;
   }
  }
 } else {

  WARN_ON(1);
  return 0;
 }

 for (i = 0; i < 64; i++)
  if (tdata[i] != vdata[i]) {
   changed = 1;
   vdata[i] = tdata[i];
  }
 return changed;
}
