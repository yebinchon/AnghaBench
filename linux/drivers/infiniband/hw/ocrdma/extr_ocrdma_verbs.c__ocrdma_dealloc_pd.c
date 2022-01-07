
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_pd {int dpp_enabled; int id; } ;
struct ocrdma_dev {TYPE_1__* pd_mgr; } ;
struct TYPE_2__ {scalar_t__ pd_prealloc_valid; } ;


 int ocrdma_mbx_dealloc_pd (struct ocrdma_dev*,struct ocrdma_pd*) ;
 int ocrdma_put_pd_num (struct ocrdma_dev*,int ,int ) ;

__attribute__((used)) static void _ocrdma_dealloc_pd(struct ocrdma_dev *dev,
         struct ocrdma_pd *pd)
{
 if (dev->pd_mgr->pd_prealloc_valid)
  ocrdma_put_pd_num(dev, pd->id, pd->dpp_enabled);
 else
  ocrdma_mbx_dealloc_pd(dev, pd);
}
