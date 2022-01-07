
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ decimator; int val; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* st_lsm6dsx_decimator_table ;

__attribute__((used)) static int st_lsm6dsx_get_decimator_val(u8 val)
{
 const int max_size = ARRAY_SIZE(st_lsm6dsx_decimator_table);
 int i;

 for (i = 0; i < max_size; i++)
  if (st_lsm6dsx_decimator_table[i].decimator == val)
   break;

 return i == max_size ? 0 : st_lsm6dsx_decimator_table[i].val;
}
