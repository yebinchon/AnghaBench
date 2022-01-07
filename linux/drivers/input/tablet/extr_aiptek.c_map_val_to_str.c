
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aiptek_map {int value; char const* string; } ;


 int AIPTEK_INVALID_VALUE ;

__attribute__((used)) static const char *map_val_to_str(const struct aiptek_map *map, int val)
{
 const struct aiptek_map *p;

 for (p = map; p->value != AIPTEK_INVALID_VALUE; p++)
  if (val == p->value)
   return p->string;

 return "unknown";
}
