
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int reg; } ;
typedef TYPE_1__ i915_reg_t ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* force_nonpriv_white_list ;

__attribute__((used)) static inline bool in_whitelist(unsigned int reg)
{
 int left = 0, right = ARRAY_SIZE(force_nonpriv_white_list);
 i915_reg_t *array = force_nonpriv_white_list;

 while (left < right) {
  int mid = (left + right)/2;

  if (reg > array[mid].reg)
   left = mid + 1;
  else if (reg < array[mid].reg)
   right = mid;
  else
   return 1;
 }
 return 0;
}
