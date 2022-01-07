
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {int dummy; } ;


 int SEND_CM_GLOBAL_CREDIT ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT ;
 int SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SMASK ;
 int read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static void set_global_limit(struct hfi1_devdata *dd, u16 limit)
{
 u64 reg;

 reg = read_csr(dd, SEND_CM_GLOBAL_CREDIT);
 reg &= ~SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SMASK;
 reg |= (u64)limit << SEND_CM_GLOBAL_CREDIT_TOTAL_CREDIT_LIMIT_SHIFT;
 write_csr(dd, SEND_CM_GLOBAL_CREDIT, reg);
}
