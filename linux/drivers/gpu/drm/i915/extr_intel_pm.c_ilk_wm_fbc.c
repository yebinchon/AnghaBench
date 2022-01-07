
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static u32 ilk_wm_fbc(u32 pri_val, u32 horiz_pixels, u8 cpp)
{






 if (WARN_ON(!cpp))
  return 0;
 if (WARN_ON(!horiz_pixels))
  return 0;

 return DIV_ROUND_UP(pri_val * 64, horiz_pixels * cpp) + 2;
}
