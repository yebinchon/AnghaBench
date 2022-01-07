
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KNL_MAX_EDCS ;
 char knl_get_edc_route (int,int ) ;

__attribute__((used)) static void knl_show_edc_route(u32 reg, char *s)
{
 int i;

 for (i = 0; i < KNL_MAX_EDCS; i++) {
  s[i*2] = knl_get_edc_route(i, reg) + '0';
  s[i*2+1] = '-';
 }

 s[KNL_MAX_EDCS*2 - 1] = '\0';
}
