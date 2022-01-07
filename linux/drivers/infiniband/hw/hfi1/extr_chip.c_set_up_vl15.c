
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_CREDIT_VL15 ;
 int SEND_CM_CREDIT_VL15_DEDICATED_LIMIT_VL_SHIFT ;
 int SEND_CM_GLOBAL_CREDIT ;
 int SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SMASK ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

void set_up_vl15(struct hfi1_devdata *dd, u16 vl15buf)
{
 u64 reg = read_csr(dd, SEND_CM_GLOBAL_CREDIT);


 reg &= ~(SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SMASK |
   SEND_CM_GLOBAL_CREDIT_SHARED_LIMIT_SMASK);





 reg |= (u64)vl15buf << SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT;
 write_csr(dd, SEND_CM_GLOBAL_CREDIT, reg);

 write_csr(dd, SEND_CM_CREDIT_VL15, (u64)vl15buf
    << SEND_CM_CREDIT_VL15_DEDICATED_LIMIT_VL_SHIFT);
}
