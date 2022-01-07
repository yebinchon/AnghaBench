
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pbl_addr; } ;
struct iwch_mr {TYPE_2__ attr; TYPE_1__* rhp; } ;
typedef int __be64 ;
struct TYPE_3__ {int rdev; } ;


 int cxio_write_pbl (int *,int *,scalar_t__,int) ;

int iwch_write_pbl(struct iwch_mr *mhp, __be64 *pages, int npages, int offset)
{
 return cxio_write_pbl(&mhp->rhp->rdev, pages,
         mhp->attr.pbl_addr + (offset << 3), npages);
}
