
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool
variable_matches(const char *var_name, size_t len, const char *match_name,
   int *match)
{
 for (*match = 0; ; (*match)++) {
  char c = match_name[*match];

  switch (c) {
  case '*':

   return 1;

  case '\0':

   return (*match == len);

  default:





   if (*match < len && c == var_name[*match])
    continue;
   return 0;
  }
 }
}
