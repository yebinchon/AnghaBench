
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum display_flags { ____Placeholder_display_flags } display_flags ;



__attribute__((used)) static int vm_flag_to_int(enum display_flags flags, enum display_flags high,
 enum display_flags low)
{
 if (flags & high)
  return 1;
 if (flags & low)
  return -1;
 return 0;
}
