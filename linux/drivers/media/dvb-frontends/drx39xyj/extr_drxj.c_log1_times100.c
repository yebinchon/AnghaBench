
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 log1_times100(u32 x)
{
 static const u8 scale = 15;
 static const u8 index_width = 5;





 static const u32 log2lut[] = {
  0,
  290941,
  573196,
  847269,
  1113620,
  1372674,
  1624818,
  1870412,
  2109788,
  2343253,
  2571091,
  2793569,
  3010931,
  3223408,
  3431216,
  3634553,
  3833610,
  4028562,
  4219576,
  4406807,
  4590402,
  4770499,
  4947231,
  5120719,
  5291081,
  5458428,
  5622864,
  5784489,
  5943398,
  6099680,
  6253421,
  6404702,
  6553600,
 };

 u8 i = 0;
 u32 y = 0;
 u32 d = 0;
 u32 k = 0;
 u32 r = 0;

 if (x == 0)
  return 0;



 if ((x & (((u32) (-1)) << (scale + 1))) == 0) {
  for (k = scale; k > 0; k--) {
   if (x & (((u32) 1) << scale))
    break;
   x <<= 1;
  }
 } else {
  for (k = scale; k < 31; k++) {
   if ((x & (((u32) (-1)) << (scale + 1))) == 0)
    break;
   x >>= 1;
  }
 }





 y = k * ((((u32) 1) << scale) * 200);


 x &= ((((u32) 1) << scale) - 1);

 i = (u8) (x >> (scale - index_width));

 d = x & ((((u32) 1) << (scale - index_width)) - 1);

 y += log2lut[i] +
     ((d * (log2lut[i + 1] - log2lut[i])) >> (scale - index_width));

 y /= 108853;
 r = (y >> 1);

 if (y & ((u32)1))
  r++;

 return r;

}
