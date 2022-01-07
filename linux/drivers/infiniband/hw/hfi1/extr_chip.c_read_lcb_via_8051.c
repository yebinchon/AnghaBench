
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; } ;


 int DC_LCB_CFG_RUN ;
 int EBUSY ;
 int HCMD_READ_LCB_CSR ;
 int HCMD_SUCCESS ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 scalar_t__ acquire_lcb_access (struct hfi1_devdata*,int ) ;
 int do_8051_command (struct hfi1_devdata*,int ,int,int *) ;
 int read_csr (struct hfi1_devdata*,int) ;
 int release_lcb_access (struct hfi1_devdata*,int ) ;

__attribute__((used)) static int read_lcb_via_8051(struct hfi1_devdata *dd, u32 addr, u64 *data)
{
 u32 regno;
 int ret;

 if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR) {
  if (acquire_lcb_access(dd, 0) == 0) {
   *data = read_csr(dd, addr);
   release_lcb_access(dd, 0);
   return 0;
  }
  return -EBUSY;
 }


 regno = (addr - DC_LCB_CFG_RUN) >> 3;
 ret = do_8051_command(dd, HCMD_READ_LCB_CSR, regno, data);
 if (ret != HCMD_SUCCESS)
  return -EBUSY;
 return 0;
}
