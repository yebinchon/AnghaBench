
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ num_pbes; } ;
struct ocrdma_mr {scalar_t__ npages; int * pages; TYPE_1__ hwmr; } ;
struct ib_mr {int dummy; } ;


 int ENOMEM ;
 struct ocrdma_mr* get_ocrdma_mr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ocrdma_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct ocrdma_mr *mr = get_ocrdma_mr(ibmr);

 if (unlikely(mr->npages == mr->hwmr.num_pbes))
  return -ENOMEM;

 mr->pages[mr->npages++] = addr;

 return 0;
}
