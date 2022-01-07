
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_GLOBAL_CREDIT ;
 int SEND_CM_GLOBAL_CREDIT_AU_SHIFT ;
 int SEND_CM_GLOBAL_CREDIT_AU_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

void set_up_vau(struct hfi1_devdata *dd, u8 vau)
{
 u64 reg = read_csr(dd, SEND_CM_GLOBAL_CREDIT);


 reg &= ~SEND_CM_GLOBAL_CREDIT_AU_SMASK;
 reg |= (u64)vau << SEND_CM_GLOBAL_CREDIT_AU_SHIFT;
 write_csr(dd, SEND_CM_GLOBAL_CREDIT, reg);
}
