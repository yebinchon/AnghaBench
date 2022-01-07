
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int AES_FLAGS_ENCRYPT ;
 int mtk_aes_gcm_crypt (struct aead_request*,int ) ;

__attribute__((used)) static int mtk_aes_gcm_encrypt(struct aead_request *req)
{
 return mtk_aes_gcm_crypt(req, AES_FLAGS_ENCRYPT);
}
