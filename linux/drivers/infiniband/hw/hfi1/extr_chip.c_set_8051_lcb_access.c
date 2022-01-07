
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int DC_DC8051_CFG_CSR_ACCESS_SEL ;
 int DC_DC8051_CFG_CSR_ACCESS_SEL_DCC_SMASK ;
 int write_csr (struct hfi1_devdata*,int ,int ) ;

__attribute__((used)) static inline void set_8051_lcb_access(struct hfi1_devdata *dd)
{
 write_csr(dd, DC_DC8051_CFG_CSR_ACCESS_SEL,
    DC_DC8051_CFG_CSR_ACCESS_SEL_DCC_SMASK);
}
