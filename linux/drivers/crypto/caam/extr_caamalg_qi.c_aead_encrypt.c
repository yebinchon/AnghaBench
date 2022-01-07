
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aead_request {int dummy; } ;


 int aead_crypt (struct aead_request*,int) ;

__attribute__((used)) static int aead_encrypt(struct aead_request *req)
{
 return aead_crypt(req, 1);
}
