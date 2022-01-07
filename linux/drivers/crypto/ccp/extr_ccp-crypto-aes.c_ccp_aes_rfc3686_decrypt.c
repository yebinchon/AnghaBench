
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int ccp_aes_rfc3686_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int ccp_aes_rfc3686_decrypt(struct ablkcipher_request *req)
{
 return ccp_aes_rfc3686_crypt(req, 0);
}
