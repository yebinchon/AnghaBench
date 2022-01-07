
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_dev {TYPE_1__* pd_mgr; } ;
struct TYPE_2__ {struct TYPE_2__* pd_dpp_bitmap; struct TYPE_2__* pd_norm_bitmap; } ;


 int kfree (TYPE_1__*) ;
 int ocrdma_mbx_dealloc_pd_range (struct ocrdma_dev*) ;

__attribute__((used)) static void ocrdma_free_pd_pool(struct ocrdma_dev *dev)
{
 ocrdma_mbx_dealloc_pd_range(dev);
 kfree(dev->pd_mgr->pd_norm_bitmap);
 kfree(dev->pd_mgr->pd_dpp_bitmap);
 kfree(dev->pd_mgr);
}
