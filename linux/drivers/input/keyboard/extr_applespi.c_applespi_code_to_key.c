
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 unsigned int* applespi_scancodes ;
 unsigned int applespi_translate_fn_key (unsigned int,int) ;
 unsigned int applespi_translate_iso_layout (unsigned int) ;
 scalar_t__ fnmode ;
 scalar_t__ iso_layout ;

__attribute__((used)) static unsigned int applespi_code_to_key(u8 code, int fn_pressed)
{
 unsigned int key = applespi_scancodes[code];

 if (fnmode)
  key = applespi_translate_fn_key(key, fn_pressed);
 if (iso_layout)
  key = applespi_translate_iso_layout(key);
 return key;
}
