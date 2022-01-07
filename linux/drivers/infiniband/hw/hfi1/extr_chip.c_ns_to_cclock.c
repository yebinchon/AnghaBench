
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; } ;


 int ASIC_CCLOCK_PS ;
 int FPGA_CCLOCK_PS ;
 scalar_t__ ICODE_FPGA_EMULATION ;

u32 ns_to_cclock(struct hfi1_devdata *dd, u32 ns)
{
 u32 cclocks;

 if (dd->icode == ICODE_FPGA_EMULATION)
  cclocks = (ns * 1000) / FPGA_CCLOCK_PS;
 else
  cclocks = (ns * 1000) / ASIC_CCLOCK_PS;
 if (ns && !cclocks)
  cclocks = 1;
 return cclocks;
}
