
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int raw_size; int banks_num; int dram_channels_num; } ;
struct dce112_compressor {TYPE_1__ base; } ;



__attribute__((used)) static uint32_t lpt_size_alignment(struct dce112_compressor *cp110)
{

 return cp110->base.raw_size * cp110->base.banks_num *
  cp110->base.dram_channels_num;
}
