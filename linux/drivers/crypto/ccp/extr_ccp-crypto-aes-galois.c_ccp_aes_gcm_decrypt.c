
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int CCP_AES_ACTION_DECRYPT ;
 int ccp_aes_gcm_crypt (struct aead_request*,int ) ;

__attribute__((used)) static int ccp_aes_gcm_decrypt(struct aead_request *req)
{
 return ccp_aes_gcm_crypt(req, CCP_AES_ACTION_DECRYPT);
}
