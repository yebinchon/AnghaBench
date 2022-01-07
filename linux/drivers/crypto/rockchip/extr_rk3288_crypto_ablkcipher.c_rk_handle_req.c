
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int (* enqueue ) (struct rk_crypto_info*,int *) ;int align_size; } ;
struct ablkcipher_request {int base; int nbytes; } ;


 int EINVAL ;
 int IS_ALIGNED (int ,int ) ;
 int stub1 (struct rk_crypto_info*,int *) ;

__attribute__((used)) static int rk_handle_req(struct rk_crypto_info *dev,
    struct ablkcipher_request *req)
{
 if (!IS_ALIGNED(req->nbytes, dev->align_size))
  return -EINVAL;
 else
  return dev->enqueue(dev, &req->base);
}
