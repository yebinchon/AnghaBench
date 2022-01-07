
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_mr {int umem; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int device; } ;


 int ib_umem_release (int ) ;
 int kfree (struct mthca_mr*) ;
 int mthca_free_mr (int ,struct mthca_mr*) ;
 int to_mdev (int ) ;
 struct mthca_mr* to_mmr (struct ib_mr*) ;

__attribute__((used)) static int mthca_dereg_mr(struct ib_mr *mr, struct ib_udata *udata)
{
 struct mthca_mr *mmr = to_mmr(mr);

 mthca_free_mr(to_mdev(mr->device), mmr);
 ib_umem_release(mmr->umem);
 kfree(mmr);

 return 0;
}
