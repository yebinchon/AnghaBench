
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int addr_in; int count; } ;


 int CRYPTO_WRITE (struct rk_crypto_info*,int ,int) ;
 int RK_CRYPTO_CTRL ;
 int RK_CRYPTO_HASH_START ;
 int RK_CRYPTO_HRDMAL ;
 int RK_CRYPTO_HRDMAS ;

__attribute__((used)) static void crypto_ahash_dma_start(struct rk_crypto_info *dev)
{
 CRYPTO_WRITE(dev, RK_CRYPTO_HRDMAS, dev->addr_in);
 CRYPTO_WRITE(dev, RK_CRYPTO_HRDMAL, (dev->count + 3) / 4);
 CRYPTO_WRITE(dev, RK_CRYPTO_CTRL, RK_CRYPTO_HASH_START |
       (RK_CRYPTO_HASH_START << 16));
}
