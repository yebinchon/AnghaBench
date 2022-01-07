
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct akcipher_request {int dummy; } ;


 int ccp_rsa_crypt (struct akcipher_request*,int) ;

__attribute__((used)) static int ccp_rsa_encrypt(struct akcipher_request *req)
{
 return ccp_rsa_crypt(req, 1);
}
