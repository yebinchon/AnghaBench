
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct applespi_key_translation {scalar_t__ from; } ;



__attribute__((used)) static const struct applespi_key_translation *
applespi_find_translation(const struct applespi_key_translation *table, u16 key)
{
 const struct applespi_key_translation *trans;

 for (trans = table; trans->from; trans++)
  if (trans->from == key)
   return trans;

 return ((void*)0);
}
