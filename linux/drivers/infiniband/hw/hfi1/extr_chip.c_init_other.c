
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int CCE_ERR_MASK ;
 int DCC_ERR_FLG_EN ;
 int DC_DC8051_ERR_EN ;
 unsigned long long DRIVER_MISC_MASK ;
 int MISC_ERR_MASK ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void init_other(struct hfi1_devdata *dd)
{

 write_csr(dd, CCE_ERR_MASK, ~0ull);

 write_csr(dd, MISC_ERR_MASK, DRIVER_MISC_MASK);

 write_csr(dd, DCC_ERR_FLG_EN, ~0ull);
 write_csr(dd, DC_DC8051_ERR_EN, ~0ull);
}
