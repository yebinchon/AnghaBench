
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int dummy; } ;
struct hfi1_devdata {int dummy; } ;


 int CNTR_INVALID_VL ;
 int C_DC_FM_CFG_ERR ;
 int C_DC_RCV_ERR ;
 int C_DC_REINIT_FROM_PEER_CNT ;
 int C_DC_RMT_PHY_ERR ;
 int C_DC_RX_REPLAY ;
 int C_DC_SEQ_CRC_CNT ;
 int C_DC_UNC_ERR ;
 int C_RCV_OVF ;
 int C_SW_LINK_DOWN ;
 int C_SW_RCV_CSTR_ERR ;
 int C_SW_XMIT_CSTR_ERR ;
 int C_SW_XMIT_DSCD ;
 struct hfi1_devdata* dd_from_ibdev (struct ib_device*) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int read_dev_cntr (struct hfi1_devdata*,int ,int ) ;
 scalar_t__ read_port_cntr (struct hfi1_pportdata*,int ,int ) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int) ;

__attribute__((used)) static u64 get_error_counter_summary(struct ib_device *ibdev, u8 port,
         u8 res_lli, u8 res_ler)
{
 struct hfi1_devdata *dd = dd_from_ibdev(ibdev);
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 u64 error_counter_summary = 0, tmp;

 error_counter_summary += read_port_cntr(ppd, C_SW_RCV_CSTR_ERR,
      CNTR_INVALID_VL);

 error_counter_summary += read_port_cntr(ppd, C_SW_XMIT_DSCD,
      CNTR_INVALID_VL);
 error_counter_summary += read_port_cntr(ppd, C_SW_XMIT_CSTR_ERR,
      CNTR_INVALID_VL);
 error_counter_summary += read_dev_cntr(dd, C_DC_RMT_PHY_ERR,
            CNTR_INVALID_VL);

 error_counter_summary += (read_dev_cntr(dd, C_DC_RX_REPLAY,
      CNTR_INVALID_VL) >> res_lli);

 tmp = read_dev_cntr(dd, C_DC_SEQ_CRC_CNT, CNTR_INVALID_VL);
 tmp += read_dev_cntr(dd, C_DC_REINIT_FROM_PEER_CNT, CNTR_INVALID_VL);
 error_counter_summary += (tmp >> res_ler);
 error_counter_summary += read_dev_cntr(dd, C_DC_RCV_ERR,
            CNTR_INVALID_VL);
 error_counter_summary += read_dev_cntr(dd, C_RCV_OVF, CNTR_INVALID_VL);
 error_counter_summary += read_dev_cntr(dd, C_DC_FM_CFG_ERR,
            CNTR_INVALID_VL);

 error_counter_summary += read_port_cntr(ppd, C_SW_LINK_DOWN,
      CNTR_INVALID_VL);
 tmp = read_dev_cntr(dd, C_DC_UNC_ERR, CNTR_INVALID_VL);

 error_counter_summary += tmp < 0x100 ? (tmp & 0xff) : 0xff;

 return error_counter_summary;
}
