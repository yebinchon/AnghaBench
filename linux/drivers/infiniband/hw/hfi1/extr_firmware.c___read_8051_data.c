
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int DC8051_ACCESS_TIMEOUT ;
 int DC_DC8051_CFG_RAM_ACCESS_CTRL ;
 int DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_MASK ;
 int DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_SHIFT ;
 int DC_DC8051_CFG_RAM_ACCESS_CTRL_READ_ENA_SMASK ;
 int DC_DC8051_CFG_RAM_ACCESS_RD_DATA ;
 int DC_DC8051_CFG_RAM_ACCESS_STATUS ;
 int DC_DC8051_CFG_RAM_ACCESS_STATUS_ACCESS_COMPLETED_SMASK ;
 int ENXIO ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;
 int ndelay (int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static int __read_8051_data(struct hfi1_devdata *dd, u32 addr, u64 *result)
{
 u64 reg;
 int count;


 reg = (addr & DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_MASK)
   << DC_DC8051_CFG_RAM_ACCESS_CTRL_ADDRESS_SHIFT;
 write_csr(dd, DC_DC8051_CFG_RAM_ACCESS_CTRL, reg);

 write_csr(dd, DC_DC8051_CFG_RAM_ACCESS_CTRL,
    reg | DC_DC8051_CFG_RAM_ACCESS_CTRL_READ_ENA_SMASK);


 count = 0;
 while ((read_csr(dd, DC_DC8051_CFG_RAM_ACCESS_STATUS)
      & DC_DC8051_CFG_RAM_ACCESS_STATUS_ACCESS_COMPLETED_SMASK)
      == 0) {
  count++;
  if (count > DC8051_ACCESS_TIMEOUT) {
   dd_dev_err(dd, "timeout reading 8051 data\n");
   return -ENXIO;
  }
  ndelay(10);
 }


 *result = read_csr(dd, DC_DC8051_CFG_RAM_ACCESS_RD_DATA);

 return 0;
}
