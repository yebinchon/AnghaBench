
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int FLG_AES ;
 int FLG_CTR ;
 int stm32_cryp_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int stm32_cryp_aes_ctr_decrypt(struct ablkcipher_request *req)
{
 return stm32_cryp_crypt(req, FLG_AES | FLG_CTR);
}
