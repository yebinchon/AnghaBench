
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_sa_dir {int npe_ctx_phys; int npe_ctx; } ;


 int NPE_CTX_LEN ;
 int ctx_pool ;
 int dma_pool_free (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void free_sa_dir(struct ix_sa_dir *dir)
{
 memset(dir->npe_ctx, 0, NPE_CTX_LEN);
 dma_pool_free(ctx_pool, dir->npe_ctx, dir->npe_ctx_phys);
}
