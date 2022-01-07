
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvrdma_user_mr {scalar_t__ npages; scalar_t__ max_pages; int * pages; } ;
struct ib_mr {int dummy; } ;


 int ENOMEM ;
 struct pvrdma_user_mr* to_vmr (struct ib_mr*) ;

__attribute__((used)) static int pvrdma_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct pvrdma_user_mr *mr = to_vmr(ibmr);

 if (mr->npages == mr->max_pages)
  return -ENOMEM;

 mr->pages[mr->npages++] = addr;
 return 0;
}
