
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int * wrid_mem; int dma_mem; } ;
struct i40iw_pbl {int pble_alloc; scalar_t__ pbl_allocated; } ;
struct i40iw_qp {int * allocated_buffer; TYPE_3__ kqp; int q2_ctx_mem; int sc_qp; struct i40iw_pbl iwpbl; } ;
struct TYPE_5__ {int hw; } ;
struct TYPE_4__ {int ieq; } ;
struct i40iw_device {TYPE_2__ sc_dev; int pble_rsrc; int allocated_qps; TYPE_1__ vsi; } ;


 int i40iw_dealloc_push_page (struct i40iw_device*,int *) ;
 int i40iw_free_dma_mem (int ,int *) ;
 int i40iw_free_pble (int ,int *) ;
 int i40iw_free_resource (struct i40iw_device*,int ,scalar_t__) ;
 int i40iw_ieq_cleanup_qp (int ,int *) ;
 int kfree (int *) ;

void i40iw_free_qp_resources(struct i40iw_device *iwdev,
        struct i40iw_qp *iwqp,
        u32 qp_num)
{
 struct i40iw_pbl *iwpbl = &iwqp->iwpbl;

 i40iw_ieq_cleanup_qp(iwdev->vsi.ieq, &iwqp->sc_qp);
 i40iw_dealloc_push_page(iwdev, &iwqp->sc_qp);
 if (qp_num)
  i40iw_free_resource(iwdev, iwdev->allocated_qps, qp_num);
 if (iwpbl->pbl_allocated)
  i40iw_free_pble(iwdev->pble_rsrc, &iwpbl->pble_alloc);
 i40iw_free_dma_mem(iwdev->sc_dev.hw, &iwqp->q2_ctx_mem);
 i40iw_free_dma_mem(iwdev->sc_dev.hw, &iwqp->kqp.dma_mem);
 kfree(iwqp->kqp.wrid_mem);
 iwqp->kqp.wrid_mem = ((void*)0);
 kfree(iwqp->allocated_buffer);
}
