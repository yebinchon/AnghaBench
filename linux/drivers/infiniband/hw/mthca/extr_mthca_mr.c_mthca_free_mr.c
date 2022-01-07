
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lkey; } ;
struct mthca_mr {int mtt; TYPE_2__ ibmr; } ;
struct TYPE_3__ {int num_mpts; } ;
struct mthca_dev {TYPE_1__ limits; } ;


 int key_to_hw_index (struct mthca_dev*,int ) ;
 int mthca_HW2SW_MPT (struct mthca_dev*,int *,int) ;
 int mthca_free_mtt (struct mthca_dev*,int ) ;
 int mthca_free_region (struct mthca_dev*,int ) ;
 int mthca_warn (struct mthca_dev*,char*,int) ;

void mthca_free_mr(struct mthca_dev *dev, struct mthca_mr *mr)
{
 int err;

 err = mthca_HW2SW_MPT(dev, ((void*)0),
         key_to_hw_index(dev, mr->ibmr.lkey) &
         (dev->limits.num_mpts - 1));
 if (err)
  mthca_warn(dev, "HW2SW_MPT failed (%d)\n", err);

 mthca_free_region(dev, mr->ibmr.lkey);
 mthca_free_mtt(dev, mr->mtt);
}
