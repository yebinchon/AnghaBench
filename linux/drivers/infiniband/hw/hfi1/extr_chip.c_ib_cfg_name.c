
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 char const** ib_cfg_name_strings ;

__attribute__((used)) static const char *ib_cfg_name(int which)
{
 if (which < 0 || which >= ARRAY_SIZE(ib_cfg_name_strings))
  return "invalid";
 return ib_cfg_name_strings[which];
}
