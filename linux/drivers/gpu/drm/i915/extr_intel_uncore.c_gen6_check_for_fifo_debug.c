
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int GTFIFODBG ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;
 int __raw_uncore_write32 (struct intel_uncore*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool
gen6_check_for_fifo_debug(struct intel_uncore *uncore)
{
 u32 fifodbg;

 fifodbg = __raw_uncore_read32(uncore, GTFIFODBG);

 if (unlikely(fifodbg)) {
  DRM_DEBUG_DRIVER("GTFIFODBG = 0x08%x\n", fifodbg);
  __raw_uncore_write32(uncore, GTFIFODBG, fifodbg);
 }

 return fifodbg;
}
