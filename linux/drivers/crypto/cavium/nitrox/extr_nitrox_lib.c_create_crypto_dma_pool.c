
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int ctx_pool; } ;
struct ctx_hdr {int dummy; } ;


 int CRYPTO_CTX_SIZE ;
 int DEV (struct nitrox_device*) ;
 int ENOMEM ;
 int dma_pool_create (char*,int ,size_t,int,int ) ;

__attribute__((used)) static int create_crypto_dma_pool(struct nitrox_device *ndev)
{
 size_t size;


 size = CRYPTO_CTX_SIZE + sizeof(struct ctx_hdr);
 ndev->ctx_pool = dma_pool_create("nitrox-context",
      DEV(ndev), size, 16, 0);
 if (!ndev->ctx_pool)
  return -ENOMEM;

 return 0;
}
