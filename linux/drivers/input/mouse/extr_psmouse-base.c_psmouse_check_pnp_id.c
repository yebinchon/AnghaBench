
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (char const*,char const* const) ;

__attribute__((used)) static bool psmouse_check_pnp_id(const char *id, const char * const ids[])
{
 int i;

 for (i = 0; ids[i]; i++)
  if (!strcasecmp(id, ids[i]))
   return 1;

 return 0;
}
