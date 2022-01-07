
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_key_translation {unsigned int to; } ;


 int apple_iso_keyboard ;
 struct applespi_key_translation* applespi_find_translation (int ,unsigned int) ;

__attribute__((used)) static unsigned int applespi_translate_iso_layout(unsigned int key)
{
 const struct applespi_key_translation *trans;

 trans = applespi_find_translation(apple_iso_keyboard, key);
 if (trans)
  key = trans->to;

 return key;
}
