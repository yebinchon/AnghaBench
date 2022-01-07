
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ pbl_size; } ;
struct iwch_mr {scalar_t__ npages; int * pages; TYPE_1__ attr; } ;
struct ib_mr {int dummy; } ;


 int ENOMEM ;
 struct iwch_mr* to_iwch_mr (struct ib_mr*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int iwch_set_page(struct ib_mr *ibmr, u64 addr)
{
 struct iwch_mr *mhp = to_iwch_mr(ibmr);

 if (unlikely(mhp->npages == mhp->attr.pbl_size))
  return -ENOMEM;

 mhp->pages[mhp->npages++] = addr;

 return 0;
}
