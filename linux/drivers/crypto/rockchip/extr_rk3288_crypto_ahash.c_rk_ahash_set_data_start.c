
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int (* load_data ) (struct rk_crypto_info*,int ,int *) ;int sg_src; } ;


 int crypto_ahash_dma_start (struct rk_crypto_info*) ;
 int stub1 (struct rk_crypto_info*,int ,int *) ;

__attribute__((used)) static int rk_ahash_set_data_start(struct rk_crypto_info *dev)
{
 int err;

 err = dev->load_data(dev, dev->sg_src, ((void*)0));
 if (!err)
  crypto_ahash_dma_start(dev);
 return err;
}
