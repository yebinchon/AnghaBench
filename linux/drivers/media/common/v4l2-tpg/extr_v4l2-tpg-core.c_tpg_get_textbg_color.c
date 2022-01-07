
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int pattern; } ;
typedef enum tpg_color { ____Placeholder_tpg_color } tpg_color ;


 int TPG_COLOR_100_BLACK ;
 int TPG_COLOR_100_WHITE ;
 int TPG_COLOR_CSC_BLACK ;



__attribute__((used)) static enum tpg_color tpg_get_textbg_color(struct tpg_data *tpg)
{
 switch (tpg->pattern) {
 case 129:
  return TPG_COLOR_100_WHITE;
 case 128:
  return TPG_COLOR_CSC_BLACK;
 default:
  return TPG_COLOR_100_BLACK;
 }
}
