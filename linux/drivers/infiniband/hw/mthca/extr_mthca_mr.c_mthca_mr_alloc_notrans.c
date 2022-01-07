
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mthca_mr {int * mtt; } ;
struct mthca_dev {int dummy; } ;


 int mthca_mr_alloc (struct mthca_dev*,int ,int,int ,unsigned long long,int ,struct mthca_mr*) ;

int mthca_mr_alloc_notrans(struct mthca_dev *dev, u32 pd,
      u32 access, struct mthca_mr *mr)
{
 mr->mtt = ((void*)0);
 return mthca_mr_alloc(dev, pd, 12, 0, ~0ULL, access, mr);
}
