
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int dummy; } ;


 int FLAGS_CBC ;
 int FLAGS_ENCRYPT ;
 int omap_aes_crypt (struct ablkcipher_request*,int) ;

__attribute__((used)) static int omap_aes_cbc_encrypt(struct ablkcipher_request *req)
{
 return omap_aes_crypt(req, FLAGS_ENCRYPT | FLAGS_CBC);
}
