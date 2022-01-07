
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_crypto_info {int addr_in; int count; int addr_out; } ;


 int CRYPTO_WRITE (struct rk_crypto_info*,int ,int) ;
 int RK_CRYPTO_BLOCK_START ;
 int RK_CRYPTO_BRDMAL ;
 int RK_CRYPTO_BRDMAS ;
 int RK_CRYPTO_BTDMAS ;
 int RK_CRYPTO_CTRL ;
 int _SBF (int,int) ;

__attribute__((used)) static void crypto_dma_start(struct rk_crypto_info *dev)
{
 CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAS, dev->addr_in);
 CRYPTO_WRITE(dev, RK_CRYPTO_BRDMAL, dev->count / 4);
 CRYPTO_WRITE(dev, RK_CRYPTO_BTDMAS, dev->addr_out);
 CRYPTO_WRITE(dev, RK_CRYPTO_CTRL, RK_CRYPTO_BLOCK_START |
       _SBF(RK_CRYPTO_BLOCK_START, 16));
}
