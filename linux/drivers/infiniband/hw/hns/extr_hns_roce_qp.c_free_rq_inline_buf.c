
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* wqe_list; } ;
struct hns_roce_qp {TYPE_1__ rq_inl_buf; } ;
struct TYPE_4__ {struct TYPE_4__* sg_list; } ;


 int kfree (TYPE_2__*) ;

__attribute__((used)) static void free_rq_inline_buf(struct hns_roce_qp *hr_qp)
{
 kfree(hr_qp->rq_inl_buf.wqe_list[0].sg_list);
 kfree(hr_qp->rq_inl_buf.wqe_list);
}
