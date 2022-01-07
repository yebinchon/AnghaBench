
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 scalar_t__ ASIC_PCIE_SD_INTRPT_LIST ;
 int ASIC_PCIE_SD_INTRPT_LIST_INTRPT_CODE_SHIFT ;
 int ASIC_PCIE_SD_INTRPT_LIST_INTRPT_DATA_SHIFT ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int) ;

__attribute__((used)) static void write_gasket_interrupt(struct hfi1_devdata *dd, int index,
       u16 code, u16 data)
{
 write_csr(dd, ASIC_PCIE_SD_INTRPT_LIST + (index * 8),
    (((u64)code << ASIC_PCIE_SD_INTRPT_LIST_INTRPT_CODE_SHIFT) |
     ((u64)data << ASIC_PCIE_SD_INTRPT_LIST_INTRPT_DATA_SHIFT)));
}
