
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_pd {int dummy; } ;
struct ib_mr {int dummy; } ;


 struct ib_mr* i40iw_reg_phys_mr (struct ib_pd*,int ,int ,int,int *) ;

__attribute__((used)) static struct ib_mr *i40iw_get_dma_mr(struct ib_pd *pd, int acc)
{
 u64 kva = 0;

 return i40iw_reg_phys_mr(pd, 0, 0, acc, &kva);
}
