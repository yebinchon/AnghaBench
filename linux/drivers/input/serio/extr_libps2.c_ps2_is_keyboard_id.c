
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int keyboard_ids ;


 int * memchr (int const*,int,int) ;

bool ps2_is_keyboard_id(u8 id_byte)
{
 static const u8 keyboard_ids[] = {
  0xab,
  0xac,
  0x2b,
  0x5d,
  0x60,
  0x47,
 };

 return memchr(keyboard_ids, id_byte, sizeof(keyboard_ids)) != ((void*)0);
}
