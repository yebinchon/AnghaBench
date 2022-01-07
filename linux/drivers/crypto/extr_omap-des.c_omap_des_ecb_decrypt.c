
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int omap_des_crypt (struct ablkcipher_request*,int ) ;

__attribute__((used)) static int omap_des_ecb_decrypt(struct ablkcipher_request *req)
{
 return omap_des_crypt(req, 0);
}
