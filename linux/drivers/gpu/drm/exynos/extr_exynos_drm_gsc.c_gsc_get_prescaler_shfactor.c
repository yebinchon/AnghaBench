
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void gsc_get_prescaler_shfactor(u32 hratio, u32 vratio, u32 *shfactor)
{
 if (hratio == 4 && vratio == 4)
  *shfactor = 4;
 else if ((hratio == 4 && vratio == 2) ||
   (hratio == 2 && vratio == 4))
  *shfactor = 3;
 else if ((hratio == 4 && vratio == 1) ||
   (hratio == 1 && vratio == 4) ||
   (hratio == 2 && vratio == 2))
  *shfactor = 2;
 else if (hratio == 1 && vratio == 1)
  *shfactor = 0;
 else
  *shfactor = 1;
}
