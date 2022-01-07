
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct komeda_component {int reg; } ;


 int BLK_CONTROL ;
 int MG_INPUT_ID0 ;
 int MG_INPUT_ID1 ;
 int MG_SIZE ;
 int dump_block_header (struct seq_file*,int ) ;
 int get_values_from_reg (int ,int ,int,int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void d71_merger_dump(struct komeda_component *c, struct seq_file *sf)
{
 u32 v;

 dump_block_header(sf, c->reg);

 get_values_from_reg(c->reg, MG_INPUT_ID0, 1, &v);
 seq_printf(sf, "MG_INPUT_ID0:\t\t0x%X\n", v);

 get_values_from_reg(c->reg, MG_INPUT_ID1, 1, &v);
 seq_printf(sf, "MG_INPUT_ID1:\t\t0x%X\n", v);

 get_values_from_reg(c->reg, BLK_CONTROL, 1, &v);
 seq_printf(sf, "MG_CONTROL:\t\t0x%X\n", v);

 get_values_from_reg(c->reg, MG_SIZE, 1, &v);
 seq_printf(sf, "MG_SIZE:\t\t0x%X\n", v);
}
