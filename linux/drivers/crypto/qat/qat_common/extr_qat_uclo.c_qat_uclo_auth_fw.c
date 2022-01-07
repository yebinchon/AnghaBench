
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct icp_qat_fw_loader_handle {int dummy; } ;
struct icp_qat_fw_auth_desc {int css_hdr_low; int css_hdr_high; } ;
struct icp_qat_auth_chunk {int dummy; } ;


 int ADD_ADDR (int ,int ) ;
 int BITS_IN_DWORD ;
 int EINVAL ;
 unsigned int FCU_AUTH_STS_MASK ;
 int FCU_CONTROL ;
 int FCU_CTRL_CMD_AUTH ;
 int FCU_DRAM_ADDR_HI ;
 int FCU_DRAM_ADDR_LO ;
 int FCU_STATUS ;
 unsigned int FCU_STS_AUTHFWLD_POS ;
 unsigned int FCU_STS_VERI_DONE ;
 unsigned int FCU_STS_VERI_FAIL ;
 int FW_AUTH_MAX_RETRY ;
 int FW_AUTH_WAIT_PERIOD ;
 unsigned int GET_CAP_CSR (struct icp_qat_fw_loader_handle*,int ) ;
 int SET_CAP_CSR (struct icp_qat_fw_loader_handle*,int ,int) ;
 int msleep (int ) ;
 int pr_err (char*,unsigned int,unsigned int) ;

__attribute__((used)) static int qat_uclo_auth_fw(struct icp_qat_fw_loader_handle *handle,
       struct icp_qat_fw_auth_desc *desc)
{
 unsigned int fcu_sts, retry = 0;
 u64 bus_addr;

 bus_addr = ADD_ADDR(desc->css_hdr_high, desc->css_hdr_low)
      - sizeof(struct icp_qat_auth_chunk);
 SET_CAP_CSR(handle, FCU_DRAM_ADDR_HI, (bus_addr >> BITS_IN_DWORD));
 SET_CAP_CSR(handle, FCU_DRAM_ADDR_LO, bus_addr);
 SET_CAP_CSR(handle, FCU_CONTROL, FCU_CTRL_CMD_AUTH);

 do {
  msleep(FW_AUTH_WAIT_PERIOD);
  fcu_sts = GET_CAP_CSR(handle, FCU_STATUS);
  if ((fcu_sts & FCU_AUTH_STS_MASK) == FCU_STS_VERI_FAIL)
   goto auth_fail;
  if (((fcu_sts >> FCU_STS_AUTHFWLD_POS) & 0x1))
   if ((fcu_sts & FCU_AUTH_STS_MASK) == FCU_STS_VERI_DONE)
    return 0;
 } while (retry++ < FW_AUTH_MAX_RETRY);
auth_fail:
 pr_err("QAT: authentication error (FCU_STATUS = 0x%x),retry = %d\n",
        fcu_sts & FCU_AUTH_STS_MASK, retry);
 return -EINVAL;
}
