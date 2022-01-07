
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resources; scalar_t__ res_tail; scalar_t__ res_head; } ;
struct rxe_qp {TYPE_1__ resp; } ;
struct resp_res {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kcalloc (unsigned int,int,int ) ;

__attribute__((used)) static int alloc_rd_atomic_resources(struct rxe_qp *qp, unsigned int n)
{
 qp->resp.res_head = 0;
 qp->resp.res_tail = 0;
 qp->resp.resources = kcalloc(n, sizeof(struct resp_res), GFP_KERNEL);

 if (!qp->resp.resources)
  return -ENOMEM;

 return 0;
}
