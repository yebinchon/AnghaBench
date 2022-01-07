
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_table_context {TYPE_2__* power_play_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct TYPE_3__ {scalar_t__ format_revision; int structuresize; } ;
struct TYPE_4__ {TYPE_1__ sHeader; } ;
typedef TYPE_2__ ATOM_Vega20_POWERPLAYTABLE ;


 scalar_t__ ATOM_VEGA20_TABLE_REVISION_VEGA20 ;
 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int vega20_check_powerplay_table(struct smu_context *smu)
{
 ATOM_Vega20_POWERPLAYTABLE *powerplay_table = ((void*)0);
 struct smu_table_context *table_context = &smu->smu_table;

 powerplay_table = table_context->power_play_table;

 if (powerplay_table->sHeader.format_revision < ATOM_VEGA20_TABLE_REVISION_VEGA20) {
  pr_err("Unsupported PPTable format!");
  return -EINVAL;
 }

 if (!powerplay_table->sHeader.structuresize) {
  pr_err("Invalid PowerPlay Table!");
  return -EINVAL;
 }

 return 0;
}
