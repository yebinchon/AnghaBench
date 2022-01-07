
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iram_table_v_2_2 {int dummy; } ;
struct iram_table_v_2 {int dummy; } ;
struct dmcu_iram_parameters {int dummy; } ;
struct TYPE_3__ {int abm_version; } ;
struct dmcu {TYPE_2__* funcs; TYPE_1__ dmcu_version; } ;
typedef int ram_table ;
struct TYPE_4__ {int (* load_iram ) (struct dmcu*,int,char*,int) ;int (* is_dmcu_initialized ) (struct dmcu*) ;} ;


 int IRAM_RESERVE_AREA_END_V2 ;
 int IRAM_RESERVE_AREA_START_V2 ;
 int IRAM_RESERVE_AREA_START_V2_2 ;
 int IRAM_SIZE ;
 int fill_iram_v_2 (struct iram_table_v_2*,struct dmcu_iram_parameters) ;
 int fill_iram_v_2_2 (struct iram_table_v_2_2*,struct dmcu_iram_parameters) ;
 int fill_iram_v_2_3 (struct iram_table_v_2_2*,struct dmcu_iram_parameters) ;
 int memset (unsigned char**,int ,int) ;
 int stub1 (struct dmcu*) ;
 int stub2 (struct dmcu*,int,char*,int) ;
 int stub3 (struct dmcu*,int,char*,int) ;
 int stub4 (struct dmcu*,int,char*,int) ;
 int stub5 (struct dmcu*,int,char*,int) ;

bool dmcu_load_iram(struct dmcu *dmcu,
 struct dmcu_iram_parameters params)
{
 unsigned char ram_table[IRAM_SIZE];
 bool result = 0;

 if (dmcu == ((void*)0))
  return 0;

 if (!dmcu->funcs->is_dmcu_initialized(dmcu))
  return 1;

 memset(&ram_table, 0, sizeof(ram_table));

 if (dmcu->dmcu_version.abm_version == 0x23) {
  fill_iram_v_2_3((struct iram_table_v_2_2 *)ram_table, params);

  result = dmcu->funcs->load_iram(
    dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2_2);
 } else if (dmcu->dmcu_version.abm_version == 0x22) {
  fill_iram_v_2_2((struct iram_table_v_2_2 *)ram_table, params);

  result = dmcu->funcs->load_iram(
    dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2_2);
 } else {
  fill_iram_v_2((struct iram_table_v_2 *)ram_table, params);

  result = dmcu->funcs->load_iram(
    dmcu, 0, (char *)(&ram_table), IRAM_RESERVE_AREA_START_V2);

  if (result)
   result = dmcu->funcs->load_iram(
     dmcu, IRAM_RESERVE_AREA_END_V2 + 1,
     (char *)(&ram_table) + IRAM_RESERVE_AREA_END_V2 + 1,
     sizeof(ram_table) - IRAM_RESERVE_AREA_END_V2 - 1);
 }

 return result;
}
