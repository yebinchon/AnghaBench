
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hfi1_devdata {scalar_t__ icode; scalar_t__ dc8051_ver; } ;


 int DC_LCB_CFG_RUN ;
 int EBUSY ;
 int HCMD_SUCCESS ;
 int HCMD_WRITE_LCB_CSR ;
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ;
 scalar_t__ acquire_lcb_access (struct hfi1_devdata*,int ) ;
 scalar_t__ dc8051_ver (int ,int,int ) ;
 int do_8051_command (struct hfi1_devdata*,int ,int,int *) ;
 int release_lcb_access (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int,int ) ;

__attribute__((used)) static int write_lcb_via_8051(struct hfi1_devdata *dd, u32 addr, u64 data)
{
 u32 regno;
 int ret;

 if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR ||
     (dd->dc8051_ver < dc8051_ver(0, 20, 0))) {
  if (acquire_lcb_access(dd, 0) == 0) {
   write_csr(dd, addr, data);
   release_lcb_access(dd, 0);
   return 0;
  }
  return -EBUSY;
 }


 regno = (addr - DC_LCB_CFG_RUN) >> 3;
 ret = do_8051_command(dd, HCMD_WRITE_LCB_CSR, regno, &data);
 if (ret != HCMD_SUCCESS)
  return -EBUSY;
 return 0;
}
