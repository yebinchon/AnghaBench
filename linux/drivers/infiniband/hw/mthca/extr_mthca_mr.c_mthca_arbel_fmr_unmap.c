
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ mpt; } ;
struct TYPE_4__ {TYPE_1__ arbel; } ;
struct mthca_fmr {TYPE_2__ mem; scalar_t__ maps; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_MPT_STATUS_SW ;

void mthca_arbel_fmr_unmap(struct mthca_dev *dev, struct mthca_fmr *fmr)
{
 if (!fmr->maps)
  return;

 fmr->maps = 0;

 *(u8 *) fmr->mem.arbel.mpt = MTHCA_MPT_STATUS_SW;
}
