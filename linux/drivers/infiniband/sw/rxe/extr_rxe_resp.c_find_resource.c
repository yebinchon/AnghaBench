
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct resp_res* resources; } ;
struct TYPE_3__ {int max_dest_rd_atomic; } ;
struct rxe_qp {TYPE_2__ resp; TYPE_1__ attr; } ;
struct resp_res {scalar_t__ type; int last_psn; int first_psn; } ;


 scalar_t__ psn_compare (int ,int ) ;

__attribute__((used)) static struct resp_res *find_resource(struct rxe_qp *qp, u32 psn)
{
 int i;

 for (i = 0; i < qp->attr.max_dest_rd_atomic; i++) {
  struct resp_res *res = &qp->resp.resources[i];

  if (res->type == 0)
   continue;

  if (psn_compare(psn, res->first_psn) >= 0 &&
      psn_compare(psn, res->last_psn) <= 0) {
   return res;
  }
 }

 return ((void*)0);
}
