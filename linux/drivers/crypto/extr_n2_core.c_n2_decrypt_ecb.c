
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int n2_do_ecb (struct ablkcipher_request*,int) ;

__attribute__((used)) static int n2_decrypt_ecb(struct ablkcipher_request *req)
{
 return n2_do_ecb(req, 0);
}
