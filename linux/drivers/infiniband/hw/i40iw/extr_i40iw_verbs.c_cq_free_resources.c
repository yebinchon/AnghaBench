
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cq_id; } ;
struct i40iw_sc_cq {TYPE_2__ cq_uk; } ;
struct TYPE_3__ {int hw; } ;
struct i40iw_device {int allocated_cqs; TYPE_1__ sc_dev; } ;
struct i40iw_cq {int kmem; int user_mode; struct i40iw_sc_cq sc_cq; } ;


 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_free_resource (struct i40iw_device*,int ,int ) ;

__attribute__((used)) static void cq_free_resources(struct i40iw_device *iwdev, struct i40iw_cq *iwcq)
{
 struct i40iw_sc_cq *cq = &iwcq->sc_cq;

 if (!iwcq->user_mode)
  i40iw_free_dma_mem(iwdev->sc_dev.hw, &iwcq->kmem);
 i40iw_free_resource(iwdev, iwdev->allocated_cqs, cq->cq_uk.cq_id);
}
