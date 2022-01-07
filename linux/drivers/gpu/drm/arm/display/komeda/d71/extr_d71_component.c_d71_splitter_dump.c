
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct seq_file {int dummy; } ;
struct komeda_component {int reg; } ;


 int BLK_CONTROL ;
 int BLK_INPUT_ID0 ;
 int dump_block_header (struct seq_file*,int ) ;
 int get_values_from_reg (int ,int ,int,int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void d71_splitter_dump(struct komeda_component *c, struct seq_file *sf)
{
 u32 v[3];

 dump_block_header(sf, c->reg);

 get_values_from_reg(c->reg, BLK_INPUT_ID0, 1, v);
 seq_printf(sf, "SP_INPUT_ID0:\t\t0x%X\n", v[0]);

 get_values_from_reg(c->reg, BLK_CONTROL, 3, v);
 seq_printf(sf, "SP_CONTROL:\t\t0x%X\n", v[0]);
 seq_printf(sf, "SP_SIZE:\t\t0x%X\n", v[1]);
 seq_printf(sf, "SP_OVERLAP_SIZE:\t0x%X\n", v[2]);
}
