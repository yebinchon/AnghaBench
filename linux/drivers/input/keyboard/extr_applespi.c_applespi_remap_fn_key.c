
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct keyboard_protocol {unsigned char fn_pressed; int modifiers; } ;


 int ARRAY_SIZE (int *) ;
 int BIT (int) ;
 int * applespi_controlcodes ;
 int fnremap ;

__attribute__((used)) static void
applespi_remap_fn_key(struct keyboard_protocol *keyboard_protocol)
{
 unsigned char tmp;
 u8 bit = BIT((fnremap - 1) & 0x07);

 if (!fnremap || fnremap > ARRAY_SIZE(applespi_controlcodes) ||
     !applespi_controlcodes[fnremap - 1])
  return;

 tmp = keyboard_protocol->fn_pressed;
 keyboard_protocol->fn_pressed = !!(keyboard_protocol->modifiers & bit);
 if (tmp)
  keyboard_protocol->modifiers |= bit;
 else
  keyboard_protocol->modifiers &= ~bit;
}
