
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int dummy; } ;


 int TPG_COLOR_MAX ;
 int precalculate_color (struct tpg_data*,int) ;

__attribute__((used)) static void tpg_precalculate_colors(struct tpg_data *tpg)
{
 int k;

 for (k = 0; k < TPG_COLOR_MAX; k++)
  precalculate_color(tpg, k);
}
