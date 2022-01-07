
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filter; } ;


 int GFP_KERNEL ;
 TYPE_1__ i915_selftest ;
 int kfree (char*) ;
 char* kstrdup (int ,int ) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static bool apply_subtest_filter(const char *caller, const char *name)
{
 char *filter, *sep, *tok;
 bool result = 1;

 filter = kstrdup(i915_selftest.filter, GFP_KERNEL);
 for (sep = filter; (tok = strsep(&sep, ","));) {
  bool allow = 1;
  char *sl;

  if (*tok == '!') {
   allow = 0;
   tok++;
  }

  if (*tok == '\0')
   continue;

  sl = strchr(tok, '/');
  if (sl) {
   *sl++ = '\0';
   if (strcmp(tok, caller)) {
    if (allow)
     result = 0;
    continue;
   }
   tok = sl;
  }

  if (strcmp(tok, name)) {
   if (allow)
    result = 0;
   continue;
  }

  result = allow;
  break;
 }
 kfree(filter);

 return result;
}
