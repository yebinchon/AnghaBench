
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct evergreen_mc_reg_table {size_t last; TYPE_1__* mc_reg_address; } ;
struct TYPE_2__ {int s1; int s0; } ;


 scalar_t__ btc_check_s0_mc_reg_index (int ,int *) ;

__attribute__((used)) static void btc_set_s0_mc_reg_index(struct evergreen_mc_reg_table *table)
{
 u32 i;
 u16 address;

 for (i = 0; i < table->last; i++) {
  table->mc_reg_address[i].s0 =
   btc_check_s0_mc_reg_index(table->mc_reg_address[i].s1, &address) ?
   address : table->mc_reg_address[i].s1;
 }
}
