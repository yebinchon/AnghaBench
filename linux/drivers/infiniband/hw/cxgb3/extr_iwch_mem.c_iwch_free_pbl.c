
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pbl_size; int pbl_addr; } ;
struct iwch_mr {TYPE_2__ attr; TYPE_1__* rhp; } ;
struct TYPE_3__ {int rdev; } ;


 int cxio_hal_pblpool_free (int *,int ,int) ;

void iwch_free_pbl(struct iwch_mr *mhp)
{
 cxio_hal_pblpool_free(&mhp->rhp->rdev, mhp->attr.pbl_addr,
         mhp->attr.pbl_size << 3);
}
