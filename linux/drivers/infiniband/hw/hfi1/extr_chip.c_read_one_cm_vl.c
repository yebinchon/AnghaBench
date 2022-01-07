
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vl_limit {void* shared; void* dedicated; } ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_MASK ;
 int SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT ;
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_MASK ;
 int SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT ;
 void* cpu_to_be16 (int) ;
 int read_csr (struct hfi1_devdata*,int ) ;

__attribute__((used)) static void read_one_cm_vl(struct hfi1_devdata *dd, u32 csr,
      struct vl_limit *vll)
{
 u64 reg = read_csr(dd, csr);

 vll->dedicated = cpu_to_be16(
  (reg >> SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_SHIFT)
  & SEND_CM_CREDIT_VL_DEDICATED_LIMIT_VL_MASK);
 vll->shared = cpu_to_be16(
  (reg >> SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_SHIFT)
  & SEND_CM_CREDIT_VL_SHARED_LIMIT_VL_MASK);
}
