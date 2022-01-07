
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct da9034_touch {int last_x; int last_y; int da9034_dev; } ;


 int DA9034_TSI_XY_LSB ;
 int DA9034_TSI_X_MSB ;
 int DA9034_TSI_Y_MSB ;
 int da903x_read (int ,int ,int*) ;

__attribute__((used)) static int read_tsi(struct da9034_touch *touch)
{
 uint8_t _x, _y, _v;
 int ret;

 ret = da903x_read(touch->da9034_dev, DA9034_TSI_X_MSB, &_x);
 if (ret)
  return ret;

 ret = da903x_read(touch->da9034_dev, DA9034_TSI_Y_MSB, &_y);
 if (ret)
  return ret;

 ret = da903x_read(touch->da9034_dev, DA9034_TSI_XY_LSB, &_v);
 if (ret)
  return ret;

 touch->last_x = ((_x << 2) & 0x3fc) | (_v & 0x3);
 touch->last_y = ((_y << 2) & 0x3fc) | ((_v & 0xc) >> 2);

 return 0;
}
