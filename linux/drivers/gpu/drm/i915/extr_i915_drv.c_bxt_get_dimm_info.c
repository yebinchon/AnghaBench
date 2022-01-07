
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dram_dimm_info {int size; int ranks; int width; } ;


 int bxt_get_dimm_ranks (int ) ;
 int bxt_get_dimm_size (int ) ;
 int bxt_get_dimm_width (int ) ;
 int intel_dimm_num_devices (struct dram_dimm_info*) ;

__attribute__((used)) static void bxt_get_dimm_info(struct dram_dimm_info *dimm,
         u32 val)
{
 dimm->width = bxt_get_dimm_width(val);
 dimm->ranks = bxt_get_dimm_ranks(val);





 dimm->size = bxt_get_dimm_size(val) * intel_dimm_num_devices(dimm) / 8;
}
