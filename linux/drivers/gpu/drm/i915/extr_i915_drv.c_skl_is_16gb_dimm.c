
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dram_dimm_info {int size; } ;


 scalar_t__ intel_dimm_num_devices (struct dram_dimm_info const*) ;

__attribute__((used)) static bool
skl_is_16gb_dimm(const struct dram_dimm_info *dimm)
{

 return 8 * dimm->size / (intel_dimm_num_devices(dimm) ?: 1) == 16;
}
