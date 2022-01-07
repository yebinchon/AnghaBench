
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int FPGA_DBG ;
 int FPGA_DBG_RM_NOCLAIM ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;
 int __raw_uncore_write32 (struct intel_uncore*,int ,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static bool
fpga_check_for_unclaimed_mmio(struct intel_uncore *uncore)
{
 u32 dbg;

 dbg = __raw_uncore_read32(uncore, FPGA_DBG);
 if (likely(!(dbg & FPGA_DBG_RM_NOCLAIM)))
  return 0;

 __raw_uncore_write32(uncore, FPGA_DBG, FPGA_DBG_RM_NOCLAIM);

 return 1;
}
