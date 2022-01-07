
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pbl_size; int pbl_addr; } ;
struct c4iw_mr {TYPE_2__ attr; TYPE_1__* rhp; } ;
struct TYPE_3__ {int rdev; } ;


 int ENOMEM ;
 int c4iw_pblpool_alloc (int *,int) ;

__attribute__((used)) static int alloc_pbl(struct c4iw_mr *mhp, int npages)
{
 mhp->attr.pbl_addr = c4iw_pblpool_alloc(&mhp->rhp->rdev,
          npages << 3);

 if (!mhp->attr.pbl_addr)
  return -ENOMEM;

 mhp->attr.pbl_size = npages;

 return 0;
}
