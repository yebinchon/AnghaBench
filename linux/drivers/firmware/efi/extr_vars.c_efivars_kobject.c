
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject* kobject; } ;


 TYPE_1__* __efivars ;

struct kobject *efivars_kobject(void)
{
 if (!__efivars)
  return ((void*)0);

 return __efivars->kobject;
}
