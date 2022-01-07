
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_cryp {int dev; } ;


 int CR_AES_CBC ;
 int CR_AES_CCM ;
 int CR_AES_CTR ;
 int CR_AES_ECB ;
 int CR_AES_GCM ;
 int CR_AES_UNKNOWN ;
 int CR_DES_CBC ;
 int CR_DES_ECB ;
 int CR_TDES_CBC ;
 int CR_TDES_ECB ;
 int dev_err (int ,char*) ;
 scalar_t__ is_aes (struct stm32_cryp*) ;
 scalar_t__ is_cbc (struct stm32_cryp*) ;
 scalar_t__ is_ccm (struct stm32_cryp*) ;
 scalar_t__ is_ctr (struct stm32_cryp*) ;
 scalar_t__ is_des (struct stm32_cryp*) ;
 scalar_t__ is_ecb (struct stm32_cryp*) ;
 scalar_t__ is_gcm (struct stm32_cryp*) ;
 scalar_t__ is_tdes (struct stm32_cryp*) ;

__attribute__((used)) static u32 stm32_cryp_get_hw_mode(struct stm32_cryp *cryp)
{
 if (is_aes(cryp) && is_ecb(cryp))
  return CR_AES_ECB;

 if (is_aes(cryp) && is_cbc(cryp))
  return CR_AES_CBC;

 if (is_aes(cryp) && is_ctr(cryp))
  return CR_AES_CTR;

 if (is_aes(cryp) && is_gcm(cryp))
  return CR_AES_GCM;

 if (is_aes(cryp) && is_ccm(cryp))
  return CR_AES_CCM;

 if (is_des(cryp) && is_ecb(cryp))
  return CR_DES_ECB;

 if (is_des(cryp) && is_cbc(cryp))
  return CR_DES_CBC;

 if (is_tdes(cryp) && is_ecb(cryp))
  return CR_TDES_ECB;

 if (is_tdes(cryp) && is_cbc(cryp))
  return CR_TDES_CBC;

 dev_err(cryp->dev, "Unknown mode\n");
 return CR_AES_UNKNOWN;
}
