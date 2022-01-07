
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lp8788_led {int on; int lp; } ;
typedef enum lp8788_isink_number { ____Placeholder_lp8788_isink_number } lp8788_isink_number ;


 int LP8788_ISINK_CTRL ;
 int lp8788_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int lp8788_led_enable(struct lp8788_led *led,
   enum lp8788_isink_number num, int on)
{
 int ret;

 u8 mask = 1 << num;
 u8 val = on << num;

 ret = lp8788_update_bits(led->lp, LP8788_ISINK_CTRL, mask, val);
 if (ret == 0)
  led->on = on;

 return ret;
}
