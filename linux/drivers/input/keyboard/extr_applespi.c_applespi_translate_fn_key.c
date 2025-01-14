
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_key_translation {int flags; unsigned int to; } ;


 int APPLE_FLAG_FKEY ;
 struct applespi_key_translation* applespi_find_translation (int ,unsigned int) ;
 int applespi_fn_codes ;
 int fnmode ;

__attribute__((used)) static unsigned int applespi_translate_fn_key(unsigned int key, int fn_pressed)
{
 const struct applespi_key_translation *trans;
 int do_translate;

 trans = applespi_find_translation(applespi_fn_codes, key);
 if (trans) {
  if (trans->flags & APPLE_FLAG_FKEY)
   do_translate = (fnmode == 2 && fn_pressed) ||
           (fnmode == 1 && !fn_pressed);
  else
   do_translate = fn_pressed;

  if (do_translate)
   key = trans->to;
 }

 return key;
}
