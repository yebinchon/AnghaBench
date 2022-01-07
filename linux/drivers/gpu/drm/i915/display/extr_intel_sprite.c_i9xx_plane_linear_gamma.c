
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static void i9xx_plane_linear_gamma(u16 gamma[8])
{

 static const u8 in[8] = { 0, 1, 2, 4, 8, 16, 24, 32 };
 int i;

 for (i = 0; i < 8; i++)
  gamma[i] = (in[i] << 8) / 32;
}
