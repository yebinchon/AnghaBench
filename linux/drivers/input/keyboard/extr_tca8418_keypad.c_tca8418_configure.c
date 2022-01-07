
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tca8418_keypad {int dummy; } ;


 int CFG_INT_CFG ;
 int CFG_KE_IEN ;
 int CFG_OVR_FLOW_IEN ;
 int REG_CFG ;
 int REG_DEBOUNCE_DIS1 ;
 int REG_DEBOUNCE_DIS2 ;
 int REG_DEBOUNCE_DIS3 ;
 int REG_KP_GPIO1 ;
 int REG_KP_GPIO2 ;
 int REG_KP_GPIO3 ;
 int tca8418_write_byte (struct tca8418_keypad*,int ,int) ;

__attribute__((used)) static int tca8418_configure(struct tca8418_keypad *keypad_data,
        u32 rows, u32 cols)
{
 int reg, error = 0;


 reg = ~(~0 << rows);
 reg += (~(~0 << cols)) << 8;


 error |= tca8418_write_byte(keypad_data, REG_KP_GPIO1, reg);
 error |= tca8418_write_byte(keypad_data, REG_KP_GPIO2, reg >> 8);
 error |= tca8418_write_byte(keypad_data, REG_KP_GPIO3, reg >> 16);


 error |= tca8418_write_byte(keypad_data, REG_DEBOUNCE_DIS1, reg);
 error |= tca8418_write_byte(keypad_data, REG_DEBOUNCE_DIS2, reg >> 8);
 error |= tca8418_write_byte(keypad_data, REG_DEBOUNCE_DIS3, reg >> 16);

 if (error)
  return error;

 error = tca8418_write_byte(keypad_data, REG_CFG,
    CFG_INT_CFG | CFG_OVR_FLOW_IEN | CFG_KE_IEN);

 return error;
}
