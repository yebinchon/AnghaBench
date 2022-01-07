
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 scalar_t__ SEND_CM_CREDIT_VL ;
 scalar_t__ SEND_CM_CREDIT_VL15 ;
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT ;
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SMASK ;
 int TXE_NUM_DATA_VL ;
 int read_csr (struct hfi1_devdata*,scalar_t__) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int) ;

__attribute__((used)) static void set_vl_shared(struct hfi1_devdata *dd, int vl, u16 limit)
{
 u64 reg;
 u32 addr;

 if (vl < TXE_NUM_DATA_VL)
  addr = SEND_CM_CREDIT_VL + (8 * vl);
 else
  addr = SEND_CM_CREDIT_VL15;

 reg = read_csr(dd, addr);
 reg &= ~SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SMASK;
 reg |= (u64)limit << SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT;
 write_csr(dd, addr, reg);
}
