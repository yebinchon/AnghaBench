
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_devdata {int dummy; } ;
struct firmware_details {scalar_t__ css_header; int mu; int r2; int modulus; } ;
struct css_header {int dummy; } ;


 int KEY_SIZE ;
 int MISC_CFG_RSA_MODULUS ;
 int MISC_CFG_RSA_MU ;
 int MISC_CFG_RSA_R2 ;
 int MISC_CFG_SHA_PRELOAD ;
 int MU_SIZE ;
 int write_rsa_data (struct hfi1_devdata*,int ,int ,int ) ;
 int write_streamed_rsa_data (struct hfi1_devdata*,int ,int *,int) ;

__attribute__((used)) static void load_security_variables(struct hfi1_devdata *dd,
        struct firmware_details *fdet)
{

 write_rsa_data(dd, MISC_CFG_RSA_MODULUS, fdet->modulus, KEY_SIZE);

 write_rsa_data(dd, MISC_CFG_RSA_R2, fdet->r2, KEY_SIZE);

 write_rsa_data(dd, MISC_CFG_RSA_MU, fdet->mu, MU_SIZE);

 write_streamed_rsa_data(dd, MISC_CFG_SHA_PRELOAD,
    (u8 *)fdet->css_header,
    sizeof(struct css_header));
}
