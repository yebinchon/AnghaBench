
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static u16 txbyteclkhs(u16 pixels, int bpp, int lane_count,
         u16 burst_mode_ratio)
{
 return DIV_ROUND_UP(DIV_ROUND_UP(pixels * bpp * burst_mode_ratio,
      8 * 100), lane_count);
}
