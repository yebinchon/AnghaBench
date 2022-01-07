
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct adp5520_led {int flags; int id; struct device* master; } ;


 int ADP5520_C3_MODE ;
 int ADP5520_FLAG_OFFT_MASK ;
 int ADP5520_FLAG_OFFT_SHIFT ;
 int ADP5520_LED1_EN ;
 int ADP5520_LED2_EN ;
 int ADP5520_LED3_EN ;
 int ADP5520_LED_CONTROL ;
 int ADP5520_LED_TIME ;
 int ADP5520_R3_MODE ;



 int adp5520_clr_bits (struct device*,int ,int ) ;
 int adp5520_set_bits (struct device*,int ,int) ;

__attribute__((used)) static int adp5520_led_setup(struct adp5520_led *led)
{
 struct device *dev = led->master;
 int flags = led->flags;
 int ret = 0;

 switch (led->id) {
 case 130:
  ret |= adp5520_set_bits(dev, ADP5520_LED_TIME,
     (flags >> ADP5520_FLAG_OFFT_SHIFT) &
     ADP5520_FLAG_OFFT_MASK);
  ret |= adp5520_set_bits(dev, ADP5520_LED_CONTROL,
     ADP5520_LED1_EN);
  break;
 case 129:
  ret |= adp5520_set_bits(dev, ADP5520_LED_TIME,
     ((flags >> ADP5520_FLAG_OFFT_SHIFT) &
     ADP5520_FLAG_OFFT_MASK) << 2);
  ret |= adp5520_clr_bits(dev, ADP5520_LED_CONTROL,
      ADP5520_R3_MODE);
  ret |= adp5520_set_bits(dev, ADP5520_LED_CONTROL,
     ADP5520_LED2_EN);
  break;
 case 128:
  ret |= adp5520_set_bits(dev, ADP5520_LED_TIME,
     ((flags >> ADP5520_FLAG_OFFT_SHIFT) &
     ADP5520_FLAG_OFFT_MASK) << 4);
  ret |= adp5520_clr_bits(dev, ADP5520_LED_CONTROL,
     ADP5520_C3_MODE);
  ret |= adp5520_set_bits(dev, ADP5520_LED_CONTROL,
     ADP5520_LED3_EN);
  break;
 }

 return ret;
}
