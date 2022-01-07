
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int qce_ablkcipher_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int qce_ablkcipher_encrypt(struct ablkcipher_request *req)
{
 return qce_ablkcipher_crypt(req, 1);
}
