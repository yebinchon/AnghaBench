
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct resp_res* resources; } ;
struct TYPE_3__ {int max_dest_rd_atomic; } ;
struct rxe_qp {TYPE_2__ resp; TYPE_1__ attr; } ;
struct resp_res {int dummy; } ;


 int free_rd_atomic_resource (struct rxe_qp*,struct resp_res*) ;
 int kfree (struct resp_res*) ;

__attribute__((used)) static void free_rd_atomic_resources(struct rxe_qp *qp)
{
 if (qp->resp.resources) {
  int i;

  for (i = 0; i < qp->attr.max_dest_rd_atomic; i++) {
   struct resp_res *res = &qp->resp.resources[i];

   free_rd_atomic_resource(qp, res);
  }
  kfree(qp->resp.resources);
  qp->resp.resources = ((void*)0);
 }
}
