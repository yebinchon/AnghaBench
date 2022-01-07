
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int FLAGS_ENCRYPT ;
 int omap_des_crypt (struct ablkcipher_request*,int ) ;

__attribute__((used)) static int omap_des_ecb_encrypt(struct ablkcipher_request *req)
{
 return omap_des_crypt(req, FLAGS_ENCRYPT);
}
