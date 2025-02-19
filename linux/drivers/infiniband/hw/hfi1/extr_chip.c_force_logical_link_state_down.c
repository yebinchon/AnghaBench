
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int DC_LCB_CFG_ALLOW_LINK_UP ;
 int DC_LCB_CFG_CNT_FOR_SKIP_STALL ;
 int DC_LCB_CFG_IGNORE_LOST_RCLK ;
 int DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK ;
 int DC_LCB_CFG_LANE_WIDTH ;
 int DC_LCB_CFG_LOOPBACK ;
 int DC_LCB_CFG_REINIT_AS_SLAVE ;
 int DC_LCB_CFG_RUN ;
 unsigned long long DC_LCB_CFG_RUN_EN_SHIFT ;
 int DC_LCB_CFG_TX_FIFOS_RESET ;
 int dd_dev_info (struct hfi1_devdata*,char*) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;
 int wait_link_transfer_active (struct hfi1_devdata*,int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void force_logical_link_state_down(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;




 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET, 1);
 write_csr(dd, DC_LCB_CFG_IGNORE_LOST_RCLK,
    DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK);

 write_csr(dd, DC_LCB_CFG_LANE_WIDTH, 0);
 write_csr(dd, DC_LCB_CFG_REINIT_AS_SLAVE, 0);
 write_csr(dd, DC_LCB_CFG_CNT_FOR_SKIP_STALL, 0x110);
 write_csr(dd, DC_LCB_CFG_LOOPBACK, 0x2);

 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET, 0);
 (void)read_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET);
 udelay(3);
 write_csr(dd, DC_LCB_CFG_ALLOW_LINK_UP, 1);
 write_csr(dd, DC_LCB_CFG_RUN, 1ull << DC_LCB_CFG_RUN_EN_SHIFT);

 wait_link_transfer_active(dd, 100);




 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET, 1);
 write_csr(dd, DC_LCB_CFG_ALLOW_LINK_UP, 0);
 write_csr(dd, DC_LCB_CFG_IGNORE_LOST_RCLK, 0);

 dd_dev_info(ppd->dd, "logical state forced to LINK_DOWN\n");
}
