
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int COUNTER0_UPPER ;
 int COUNTER1_UPPER ;
 int EVENT0_SEL ;
 int EVENT1_SEL ;
 int PCIE_PERF_CNTL_TXCLK ;
 int REG_GET_FIELD (int,int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,int) ;
 int ixPCIE_PERF_CNTL_TXCLK ;
 int ixPCIE_PERF_COUNT0_TXCLK ;
 int ixPCIE_PERF_COUNT1_TXCLK ;
 int ixPCIE_PERF_COUNT_CNTL ;
 int msleep (int) ;

__attribute__((used)) static void si_get_pcie_usage(struct amdgpu_device *adev, uint64_t *count0,
         uint64_t *count1)
{
 uint32_t perfctr = 0;
 uint64_t cnt0_of, cnt1_of;
 int tmp;




 if (adev->flags & AMD_IS_APU)
  return;



 perfctr = REG_SET_FIELD(perfctr, PCIE_PERF_CNTL_TXCLK, EVENT0_SEL, 40);
 perfctr = REG_SET_FIELD(perfctr, PCIE_PERF_CNTL_TXCLK, EVENT1_SEL, 104);


 WREG32_PCIE(ixPCIE_PERF_CNTL_TXCLK, perfctr);





 WREG32_PCIE(ixPCIE_PERF_COUNT_CNTL, 0x00000005);

 msleep(1000);






 WREG32_PCIE(ixPCIE_PERF_COUNT_CNTL, 0x00000002);


 tmp = RREG32_PCIE(ixPCIE_PERF_CNTL_TXCLK);
 cnt0_of = REG_GET_FIELD(tmp, PCIE_PERF_CNTL_TXCLK, COUNTER0_UPPER);
 cnt1_of = REG_GET_FIELD(tmp, PCIE_PERF_CNTL_TXCLK, COUNTER1_UPPER);


 *count0 = RREG32_PCIE(ixPCIE_PERF_COUNT0_TXCLK) | (cnt0_of << 32);
 *count1 = RREG32_PCIE(ixPCIE_PERF_COUNT1_TXCLK) | (cnt1_of << 32);
}
