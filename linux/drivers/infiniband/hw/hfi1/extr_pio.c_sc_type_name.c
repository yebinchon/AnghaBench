
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SC_MAX ;
 char const** sc_type_names ;

__attribute__((used)) static const char *sc_type_name(int index)
{
 if (index < 0 || index >= SC_MAX)
  return "unknown";
 return sc_type_names[index];
}
