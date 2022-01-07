
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum output_format_class { ____Placeholder_output_format_class } output_format_class ;


 int dm_420 ;
 int dm_n422 ;
 int dm_s422 ;
 unsigned int dml_round (unsigned int) ;

__attribute__((used)) static unsigned int dscceComputeDelay(
  unsigned int bpc,
  double bpp,
  unsigned int sliceWidth,
  unsigned int numSlices,
  enum output_format_class pixelFormat)
{
 unsigned int rcModelSize = 8192;


 unsigned int pixelsPerClock, lstall, D, initalXmitDelay, w, s, ix, wx, p, l0, a, ax, l,
   Delay, pixels;

 if (pixelFormat == dm_n422 || pixelFormat == dm_420)
  pixelsPerClock = 2;

 else
  pixelsPerClock = 1;


 initalXmitDelay = dml_round(rcModelSize / 2.0 / bpp / pixelsPerClock);


 if (bpc == 8)
  D = 81;
 else if (bpc == 10)
  D = 89;
 else
  D = 113;


 w = sliceWidth / pixelsPerClock;


 if (pixelFormat == dm_s422)
  s = 1;
 else
  s = 0;


 ix = initalXmitDelay + 45;
 wx = (w + 2) / 3;
 p = 3 * wx - w;
 l0 = ix / w;
 a = ix + p * l0;
 ax = (a + 2) / 3 + D + 6 + 1;
 l = (ax + wx - 1) / wx;
 if ((ix % w) == 0 && p != 0)
  lstall = 1;
 else
  lstall = 0;
 Delay = l * wx * (numSlices - 1) + ax + s + lstall + 22;


 pixels = Delay * 3 * pixelsPerClock;
 return pixels;
}
