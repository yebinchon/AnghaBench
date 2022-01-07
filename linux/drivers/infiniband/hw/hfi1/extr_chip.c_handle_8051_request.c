
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u16 ;
struct hfi1_pportdata {struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;


 int DCC_CFG_RESET ;
 int DC_DC8051_CFG_EXT_DEV_0 ;
 int DC_DC8051_CFG_EXT_DEV_1 ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_MASK ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_NEW_SMASK ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_MASK ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_SHIFT ;





 int HREQ_NOT_SUPPORTED ;




 int HREQ_SUCCESS ;
 int LCB_RX_FPE_TX_FPE_INTO_RESET ;
 int LCB_RX_FPE_TX_FPE_OUT_OF_RESET ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int dd_dev_info (struct hfi1_devdata*,char*,int) ;
 int hreq_response (struct hfi1_devdata*,int ,int) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static void handle_8051_request(struct hfi1_pportdata *ppd)
{
 struct hfi1_devdata *dd = ppd->dd;
 u64 reg;
 u16 data = 0;
 u8 type;

 reg = read_csr(dd, DC_DC8051_CFG_EXT_DEV_1);
 if ((reg & DC_DC8051_CFG_EXT_DEV_1_REQ_NEW_SMASK) == 0)
  return;


 write_csr(dd, DC_DC8051_CFG_EXT_DEV_0, 0);


 type = (reg >> DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_SHIFT)
   & DC_DC8051_CFG_EXT_DEV_1_REQ_TYPE_MASK;
 data = (reg >> DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT)
   & DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_MASK;

 switch (type) {
 case 132:
 case 130:
 case 131:
 case 129:
 case 128:
 case 135:
  dd_dev_info(dd, "8051 request: request 0x%x not supported\n",
       type);
  hreq_response(dd, HREQ_NOT_SUPPORTED, 0);
  break;
 case 133:

  write_csr(dd, DCC_CFG_RESET, LCB_RX_FPE_TX_FPE_INTO_RESET);

  (void)read_csr(dd, DCC_CFG_RESET);

  udelay(1);

  write_csr(dd, DCC_CFG_RESET, LCB_RX_FPE_TX_FPE_OUT_OF_RESET);
  hreq_response(dd, HREQ_SUCCESS, 0);

  break;
 case 136:
  hreq_response(dd, HREQ_SUCCESS, 0);
  break;

 case 134:
  hreq_response(dd, HREQ_SUCCESS, data);
  break;
 default:
  dd_dev_err(dd, "8051 request: unknown request 0x%x\n", type);
  hreq_response(dd, HREQ_NOT_SUPPORTED, 0);
  break;
 }
}
