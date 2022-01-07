
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ablkcipher_request {int nbytes; } ;


 int AES_BLOCK_SIZE ;
 int EINVAL ;
 int qat_alg_ablkcipher_encrypt (struct ablkcipher_request*) ;

__attribute__((used)) static int qat_alg_ablkcipher_blk_encrypt(struct ablkcipher_request *req)
{
 if (req->nbytes % AES_BLOCK_SIZE != 0)
  return -EINVAL;

 return qat_alg_ablkcipher_encrypt(req);
}
