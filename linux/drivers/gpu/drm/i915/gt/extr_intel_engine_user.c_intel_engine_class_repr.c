
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char const* const*) ;





const char *intel_engine_class_repr(u8 class)
{
 static const char * const uabi_names[] = {
  [130] = "rcs",
  [131] = "bcs",
  [129] = "vcs",
  [128] = "vecs",
 };

 if (class >= ARRAY_SIZE(uabi_names) || !uabi_names[class])
  return "xxx";

 return uabi_names[class];
}
