
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_cq {struct i40iw_cq* back_cq; } ;
struct i40iw_device {int dummy; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct i40iw_cq {TYPE_1__ ibcq; } ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void i40iw_iwarp_ce_handler(struct i40iw_device *iwdev,
       struct i40iw_sc_cq *iwcq)
{
 struct i40iw_cq *i40iwcq = iwcq->back_cq;

 if (i40iwcq->ibcq.comp_handler)
  i40iwcq->ibcq.comp_handler(&i40iwcq->ibcq,
        i40iwcq->ibcq.cq_context);
}
