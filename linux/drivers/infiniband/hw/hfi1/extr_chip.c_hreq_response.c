
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 int DC_DC8051_CFG_EXT_DEV_0 ;
 int DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK ;
 int DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT ;
 int DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void hreq_response(struct hfi1_devdata *dd, u8 return_code, u16 rsp_data)
{
 write_csr(dd, DC_DC8051_CFG_EXT_DEV_0,
    DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK |
    (u64)return_code <<
    DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT |
    (u64)rsp_data << DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT);
}
