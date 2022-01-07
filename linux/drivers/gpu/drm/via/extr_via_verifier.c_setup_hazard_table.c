
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t code; int hz; } ;
typedef TYPE_1__ hz_init_t ;
typedef int hazard_t ;


 int forbidden_command ;

__attribute__((used)) static void
setup_hazard_table(hz_init_t init_table[], hazard_t table[], int size)
{
 int i;

 for (i = 0; i < 256; ++i)
  table[i] = forbidden_command;

 for (i = 0; i < size; ++i)
  table[init_table[i].code] = init_table[i].hz;
}
