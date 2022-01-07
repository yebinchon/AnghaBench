
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ address; int length; } ;
struct TYPE_10__ {TYPE_3__ dma; } ;
struct TYPE_9__ {TYPE_5__ u; } ;
struct ccp_op {TYPE_4__ dst; scalar_t__ init; } ;
struct TYPE_6__ {scalar_t__ address; } ;
struct TYPE_7__ {TYPE_1__ dma; } ;
struct ccp_data {int sg_wa; TYPE_2__ dm_wa; } ;


 int ccp_empty_queue_buf (struct ccp_data*) ;
 int ccp_update_sg_workarea (int *,int ) ;

__attribute__((used)) static void ccp_process_data(struct ccp_data *src, struct ccp_data *dst,
        struct ccp_op *op)
{
 op->init = 0;

 if (dst) {
  if (op->dst.u.dma.address == dst->dm_wa.dma.address)
   ccp_empty_queue_buf(dst);
  else
   ccp_update_sg_workarea(&dst->sg_wa,
            op->dst.u.dma.length);
 }
}
