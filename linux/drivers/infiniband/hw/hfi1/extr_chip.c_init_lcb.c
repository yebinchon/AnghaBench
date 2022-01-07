
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {scalar_t__ icode; } ;


 int DC_LCB_CFG_CLK_CNTR ;
 int DC_LCB_CFG_CNT_FOR_SKIP_STALL ;
 int DC_LCB_CFG_LANE_WIDTH ;
 int DC_LCB_CFG_LOOPBACK ;
 int DC_LCB_CFG_REINIT_AS_SLAVE ;
 int DC_LCB_CFG_TX_FIFOS_RESET ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void init_lcb(struct hfi1_devdata *dd)
{

 if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR)
  return;




 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET, 0x01);
 write_csr(dd, DC_LCB_CFG_LANE_WIDTH, 0x00);
 write_csr(dd, DC_LCB_CFG_REINIT_AS_SLAVE, 0x00);
 write_csr(dd, DC_LCB_CFG_CNT_FOR_SKIP_STALL, 0x110);
 write_csr(dd, DC_LCB_CFG_CLK_CNTR, 0x08);
 write_csr(dd, DC_LCB_CFG_LOOPBACK, 0x02);
 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET, 0x00);
}
