
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void ilk_sprite_linear_gamma(u16 gamma[17])
{
 int i;

 for (i = 0; i < 17; i++)
  gamma[i] = (i << 10) / 16;
}
