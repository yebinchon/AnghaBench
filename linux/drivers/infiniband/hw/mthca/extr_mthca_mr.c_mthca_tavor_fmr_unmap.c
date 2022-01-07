
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpt; } ;
struct TYPE_4__ {TYPE_1__ tavor; } ;
struct mthca_fmr {TYPE_2__ mem; scalar_t__ maps; } ;
struct mthca_dev {int dummy; } ;


 int MTHCA_MPT_STATUS_SW ;
 int writeb (int ,int ) ;

void mthca_tavor_fmr_unmap(struct mthca_dev *dev, struct mthca_fmr *fmr)
{
 if (!fmr->maps)
  return;

 fmr->maps = 0;

 writeb(MTHCA_MPT_STATUS_SW, fmr->mem.tavor.mpt);
}
