
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KNL_MAX_CHANNELS ;
 char knl_get_mc_route (int,int ) ;

__attribute__((used)) static void knl_show_mc_route(u32 reg, char *s)
{
 int i;

 for (i = 0; i < KNL_MAX_CHANNELS; i++) {
  s[i*2] = knl_get_mc_route(i, reg) + '0';
  s[i*2+1] = '-';
 }

 s[KNL_MAX_CHANNELS*2 - 1] = '\0';
}
