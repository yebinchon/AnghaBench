
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __is_raid10_offset (int) ;
 int __raid10_far_copies (int) ;
 int __raid10_near_copies (int) ;

__attribute__((used)) static const char *raid10_md_layout_to_format(int layout)
{






 if (__is_raid10_offset(layout))
  return "offset";

 if (__raid10_near_copies(layout) > 1)
  return "near";

 if (__raid10_far_copies(layout) > 1)
  return "far";

 return "unknown";
}
