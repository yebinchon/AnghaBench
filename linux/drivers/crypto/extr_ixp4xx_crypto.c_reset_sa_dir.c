
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ix_sa_dir {scalar_t__ npe_mode; scalar_t__ npe_ctx_idx; int npe_ctx; } ;


 int NPE_CTX_LEN ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void reset_sa_dir(struct ix_sa_dir *dir)
{
 memset(dir->npe_ctx, 0, NPE_CTX_LEN);
 dir->npe_ctx_idx = 0;
 dir->npe_mode = 0;
}
