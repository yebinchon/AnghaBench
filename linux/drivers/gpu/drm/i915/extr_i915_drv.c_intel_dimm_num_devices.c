
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dram_dimm_info {int ranks; scalar_t__ width; } ;



__attribute__((used)) static int intel_dimm_num_devices(const struct dram_dimm_info *dimm)
{
 return dimm->ranks * 64 / (dimm->width ?: 1);
}
