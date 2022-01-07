
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;
struct TYPE_3__ {scalar_t__ dfh_id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DFL_ID_MAX ;
 TYPE_1__* dfl_devs ;

__attribute__((used)) static enum dfl_id_type dfh_id_to_type(u32 id)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dfl_devs); i++)
  if (dfl_devs[i].dfh_id == id)
   return i;

 return DFL_ID_MAX;
}
