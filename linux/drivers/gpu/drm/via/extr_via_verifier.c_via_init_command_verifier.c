
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int init_table1 ;
 int init_table2 ;
 int init_table3 ;
 int setup_hazard_table (int ,int ,int ) ;
 int table1 ;
 int table2 ;
 int table3 ;

void via_init_command_verifier(void)
{
 setup_hazard_table(init_table1, table1, ARRAY_SIZE(init_table1));
 setup_hazard_table(init_table2, table2, ARRAY_SIZE(init_table2));
 setup_hazard_table(init_table3, table3, ARRAY_SIZE(init_table3));
}
