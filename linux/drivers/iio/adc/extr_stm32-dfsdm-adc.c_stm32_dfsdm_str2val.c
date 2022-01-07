
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_str2field {int val; scalar_t__ name; } ;


 int EINVAL ;
 int strcmp (scalar_t__,char const*) ;

__attribute__((used)) static int stm32_dfsdm_str2val(const char *str,
          const struct stm32_dfsdm_str2field *list)
{
 const struct stm32_dfsdm_str2field *p = list;

 for (p = list; p && p->name; p++)
  if (!strcmp(p->name, str))
   return p->val;

 return -EINVAL;
}
