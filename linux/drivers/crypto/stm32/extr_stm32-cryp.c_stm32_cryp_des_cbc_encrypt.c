
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int FLG_CBC ;
 int FLG_DES ;
 int FLG_ENCRYPT ;
 int stm32_cryp_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int stm32_cryp_des_cbc_encrypt(struct ablkcipher_request *req)
{
 return stm32_cryp_crypt(req, FLG_DES | FLG_CBC | FLG_ENCRYPT);
}
