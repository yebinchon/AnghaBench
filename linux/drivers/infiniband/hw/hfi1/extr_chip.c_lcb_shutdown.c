
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
struct hfi1_devdata {unsigned long long lcb_err_en; } ;


 int DCC_CFG_RESET ;
 unsigned long long DCC_CFG_RESET_RESET_LCB ;
 unsigned long long DCC_CFG_RESET_RESET_RX_FPE ;
 int DC_LCB_CFG_RUN ;
 int DC_LCB_CFG_TX_FIFOS_RESET ;
 unsigned long long DC_LCB_CFG_TX_FIFOS_RESET_VAL_SHIFT ;
 int DC_LCB_ERR_EN ;
 void* read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void lcb_shutdown(struct hfi1_devdata *dd, int abort)
{
 u64 reg;


 write_csr(dd, DC_LCB_CFG_RUN, 0);

 write_csr(dd, DC_LCB_CFG_TX_FIFOS_RESET,
    1ull << DC_LCB_CFG_TX_FIFOS_RESET_VAL_SHIFT);

 dd->lcb_err_en = read_csr(dd, DC_LCB_ERR_EN);
 reg = read_csr(dd, DCC_CFG_RESET);
 write_csr(dd, DCC_CFG_RESET, reg |
    DCC_CFG_RESET_RESET_LCB | DCC_CFG_RESET_RESET_RX_FPE);
 (void)read_csr(dd, DCC_CFG_RESET);
 if (!abort) {
  udelay(1);
  write_csr(dd, DCC_CFG_RESET, reg);
  write_csr(dd, DC_LCB_ERR_EN, dd->lcb_err_en);
 }
}
