
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_pd {int privileged; int pd_num; int ntmr; int sqp_count; } ;
struct TYPE_2__ {int alloc; } ;
struct mthca_dev {TYPE_1__ pd_table; } ;


 int ENOMEM ;
 int MTHCA_MPT_FLAG_LOCAL_READ ;
 int MTHCA_MPT_FLAG_LOCAL_WRITE ;
 int atomic_set (int *,int ) ;
 int mthca_alloc (int *) ;
 int mthca_free (int *,int) ;
 int mthca_mr_alloc_notrans (struct mthca_dev*,int,int,int *) ;

int mthca_pd_alloc(struct mthca_dev *dev, int privileged, struct mthca_pd *pd)
{
 int err = 0;

 pd->privileged = privileged;

 atomic_set(&pd->sqp_count, 0);
 pd->pd_num = mthca_alloc(&dev->pd_table.alloc);
 if (pd->pd_num == -1)
  return -ENOMEM;

 if (privileged) {
  err = mthca_mr_alloc_notrans(dev, pd->pd_num,
          MTHCA_MPT_FLAG_LOCAL_READ |
          MTHCA_MPT_FLAG_LOCAL_WRITE,
          &pd->ntmr);
  if (err)
   mthca_free(&dev->pd_table.alloc, pd->pd_num);
 }

 return err;
}
