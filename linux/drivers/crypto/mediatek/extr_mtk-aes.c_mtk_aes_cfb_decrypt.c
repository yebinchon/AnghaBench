
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int AES_FLAGS_CFB128 ;
 int mtk_aes_crypt (struct ablkcipher_request*,int ) ;

__attribute__((used)) static int mtk_aes_cfb_decrypt(struct ablkcipher_request *req)
{
 return mtk_aes_crypt(req, AES_FLAGS_CFB128);
}
