
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef unsigned long u64 ;
typedef scalar_t__ u16 ;
struct videomode {scalar_t__ hactive; scalar_t__ hfront_porch; scalar_t__ hsync_len; scalar_t__ hback_porch; } ;


 int DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 int DSSDBG (char*,unsigned long,int const) ;
 int EINVAL ;
 unsigned long div_u64 (unsigned long,unsigned long) ;
 scalar_t__ max (int ,int const) ;

__attribute__((used)) static int check_horiz_timing_omap3(unsigned long pclk, unsigned long lclk,
  const struct videomode *vm, u16 pos_x,
  u16 width, u16 height, u16 out_width, u16 out_height,
  bool five_taps)
{
 const int ds = DIV_ROUND_UP(height, out_height);
 unsigned long nonactive;
 static const u8 limits[3] = { 8, 10, 20 };
 u64 val, blank;
 int i;

 nonactive = vm->hactive + vm->hfront_porch + vm->hsync_len +
      vm->hback_porch - out_width;

 i = 0;
 if (out_height < height)
  i++;
 if (out_width < width)
  i++;
 blank = div_u64((u64)(vm->hback_porch + vm->hsync_len + vm->hfront_porch) *
   lclk, pclk);
 DSSDBG("blanking period + ppl = %llu (limit = %u)\n", blank, limits[i]);
 if (blank <= limits[i])
  return -EINVAL;


 if (!five_taps)
  return 0;






 val = div_u64((u64)(nonactive - pos_x) * lclk, pclk);
 DSSDBG("(nonactive - pos_x) * pcd = %llu max(0, DS - 2) * width = %d\n",
  val, max(0, ds - 2) * width);
 if (val < max(0, ds - 2) * width)
  return -EINVAL;






 val = div_u64((u64)nonactive * lclk, pclk);
 DSSDBG("nonactive * pcd  = %llu, max(0, DS - 1) * width = %d\n",
  val, max(0, ds - 1) * width);
 if (val < max(0, ds - 1) * width)
  return -EINVAL;

 return 0;
}
