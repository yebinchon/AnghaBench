
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct cxgb4_lld_info {TYPE_6__* vr; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_11__ {scalar_t__ size; } ;
struct TYPE_10__ {scalar_t__ size; } ;
struct TYPE_12__ {TYPE_3__ cq; TYPE_2__ qp; TYPE_1__ rq; TYPE_5__ pbl; TYPE_4__ stag; } ;



__attribute__((used)) static int rdma_supported(const struct cxgb4_lld_info *infop)
{
 return infop->vr->stag.size > 0 && infop->vr->pbl.size > 0 &&
        infop->vr->rq.size > 0 && infop->vr->qp.size > 0 &&
        infop->vr->cq.size > 0;
}
