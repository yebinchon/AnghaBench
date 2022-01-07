
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int dummy; } ;
struct etnaviv_dump_registers {int value; int reg; } ;
struct core_dump_iterator {struct etnaviv_dump_registers* data; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ETDUMP_BUF_REG ;
 int etnaviv_core_dump_header (struct core_dump_iterator*,int ,struct etnaviv_dump_registers*) ;
 int * etnaviv_dump_registers ;
 int gpu_read (struct etnaviv_gpu*,int ) ;

__attribute__((used)) static void etnaviv_core_dump_registers(struct core_dump_iterator *iter,
 struct etnaviv_gpu *gpu)
{
 struct etnaviv_dump_registers *reg = iter->data;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(etnaviv_dump_registers); i++, reg++) {
  reg->reg = etnaviv_dump_registers[i];
  reg->value = gpu_read(gpu, etnaviv_dump_registers[i]);
 }

 etnaviv_core_dump_header(iter, ETDUMP_BUF_REG, reg);
}
