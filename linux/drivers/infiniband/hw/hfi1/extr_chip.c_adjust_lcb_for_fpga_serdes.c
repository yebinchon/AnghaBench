
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; } ;


 int DC_LCB_CFG_IGNORE_LOST_RCLK ;
 unsigned long long DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK ;
 int DC_LCB_CFG_LN_DCLK ;
 int DC_LCB_CFG_RX_FIFOS_RADR ;
 int DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT ;
 int DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT ;
 int DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT ;
 int DC_LCB_CFG_TX_FIFOS_RADR ;
 unsigned long long DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT ;
 scalar_t__ ICODE_FPGA_EMULATION ;
 int emulator_rev (struct hfi1_devdata*) ;
 int is_ax (struct hfi1_devdata*) ;
 scalar_t__ is_emulator_s (struct hfi1_devdata*) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void adjust_lcb_for_fpga_serdes(struct hfi1_devdata *dd)
{
 u64 rx_radr, tx_radr;
 u32 version;

 if (dd->icode != ICODE_FPGA_EMULATION)
  return;
 if (is_emulator_s(dd))
  return;


 version = emulator_rev(dd);
 if (!is_ax(dd))
  version = 0x2d;

 if (version <= 0x12) {







  rx_radr =
        0xaull << DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT
      | 0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT
      | 0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT;




  tx_radr = 6ull << DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT;
 } else if (version <= 0x18) {


  rx_radr =
        0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT
      | 0x8ull << DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT
      | 0x8ull << DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT;
  tx_radr = 7ull << DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT;
 } else if (version == 0x19) {


  rx_radr =
        0xAull << DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT
      | 0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT
      | 0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT;
  tx_radr = 3ull << DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT;
 } else if (version == 0x1a) {


  rx_radr =
        0x9ull << DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT
      | 0x8ull << DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT
      | 0x8ull << DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT;
  tx_radr = 7ull << DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT;
  write_csr(dd, DC_LCB_CFG_LN_DCLK, 1ull);
 } else {


  rx_radr =
        0x8ull << DC_LCB_CFG_RX_FIFOS_RADR_DO_NOT_JUMP_VAL_SHIFT
      | 0x7ull << DC_LCB_CFG_RX_FIFOS_RADR_OK_TO_JUMP_VAL_SHIFT
      | 0x7ull << DC_LCB_CFG_RX_FIFOS_RADR_RST_VAL_SHIFT;
  tx_radr = 3ull << DC_LCB_CFG_TX_FIFOS_RADR_RST_VAL_SHIFT;
 }

 write_csr(dd, DC_LCB_CFG_RX_FIFOS_RADR, rx_radr);

 write_csr(dd, DC_LCB_CFG_IGNORE_LOST_RCLK,
    DC_LCB_CFG_IGNORE_LOST_RCLK_EN_SMASK);
 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RADR, tx_radr);
}
