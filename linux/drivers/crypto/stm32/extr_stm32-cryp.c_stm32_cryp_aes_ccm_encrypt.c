
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int FLG_AES ;
 int FLG_CCM ;
 int FLG_ENCRYPT ;
 int stm32_cryp_aead_crypt (struct aead_request*,int) ;

__attribute__((used)) static int stm32_cryp_aes_ccm_encrypt(struct aead_request *req)
{
 return stm32_cryp_aead_crypt(req, FLG_AES | FLG_CCM | FLG_ENCRYPT);
}
