
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 scalar_t__ MISC_CFG_FW_CTRL ;
 scalar_t__ MISC_CFG_RSA_CMD ;
 scalar_t__ MISC_CFG_RSA_MODULUS ;
 scalar_t__ MISC_CFG_RSA_MU ;
 scalar_t__ MISC_CFG_RSA_R2 ;
 scalar_t__ MISC_CFG_RSA_SIGNATURE ;
 scalar_t__ MISC_ERR_CLEAR ;
 scalar_t__ MISC_ERR_MASK ;
 int write_csr (struct hfi1_devdata*,scalar_t__,unsigned long long) ;

__attribute__((used)) static void reset_misc_csrs(struct hfi1_devdata *dd)
{
 int i;

 for (i = 0; i < 32; i++) {
  write_csr(dd, MISC_CFG_RSA_R2 + (8 * i), 0);
  write_csr(dd, MISC_CFG_RSA_SIGNATURE + (8 * i), 0);
  write_csr(dd, MISC_CFG_RSA_MODULUS + (8 * i), 0);
 }





 write_csr(dd, MISC_CFG_RSA_CMD, 1);
 write_csr(dd, MISC_CFG_RSA_MU, 0);
 write_csr(dd, MISC_CFG_FW_CTRL, 0);





 write_csr(dd, MISC_ERR_MASK, 0);
 write_csr(dd, MISC_ERR_CLEAR, ~0ull);

}
