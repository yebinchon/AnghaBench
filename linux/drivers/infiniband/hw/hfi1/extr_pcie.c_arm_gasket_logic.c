
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_devdata {int hfi1_id; } ;


 int ASIC_PCIE_SD_HOST_CMD ;
 int ASIC_PCIE_SD_HOST_CMD_INTRPT_CMD_SHIFT ;
 int ASIC_PCIE_SD_HOST_CMD_SBR_MODE_SMASK ;
 int ASIC_PCIE_SD_HOST_CMD_SBUS_RCVR_ADDR_SHIFT ;
 int ASIC_PCIE_SD_HOST_CMD_TIMER_MASK ;
 int ASIC_PCIE_SD_HOST_CMD_TIMER_SHIFT ;
 scalar_t__ SBR_DELAY_US ;
 scalar_t__* pcie_serdes_broadcast ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void arm_gasket_logic(struct hfi1_devdata *dd)
{
 u64 reg;

 reg = (((u64)1 << dd->hfi1_id) <<
        ASIC_PCIE_SD_HOST_CMD_INTRPT_CMD_SHIFT) |
       ((u64)pcie_serdes_broadcast[dd->hfi1_id] <<
        ASIC_PCIE_SD_HOST_CMD_SBUS_RCVR_ADDR_SHIFT |
        ASIC_PCIE_SD_HOST_CMD_SBR_MODE_SMASK |
        ((u64)SBR_DELAY_US & ASIC_PCIE_SD_HOST_CMD_TIMER_MASK) <<
        ASIC_PCIE_SD_HOST_CMD_TIMER_SHIFT);
 write_csr(dd, ASIC_PCIE_SD_HOST_CMD, reg);

 read_csr(dd, ASIC_PCIE_SD_HOST_CMD);
}
