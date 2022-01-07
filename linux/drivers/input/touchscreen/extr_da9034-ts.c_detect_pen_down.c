
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9034_touch {int da9034_dev; } ;


 int DA9034_AUTO_CTRL2 ;
 int DA9034_PEN_DETECT ;
 int da903x_clr_bits (int ,int ,int ) ;
 int da903x_set_bits (int ,int ,int ) ;

__attribute__((used)) static inline int detect_pen_down(struct da9034_touch *touch, int on)
{
 if (on)
  return da903x_set_bits(touch->da9034_dev,
    DA9034_AUTO_CTRL2, DA9034_PEN_DETECT);
 else
  return da903x_clr_bits(touch->da9034_dev,
    DA9034_AUTO_CTRL2, DA9034_PEN_DETECT);
}
