
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int max_recv_sge; } ;
struct ib_qp_init_attr {TYPE_1__ cap; } ;
struct hns_roce_rinl_wqe {int * sg_list; } ;
struct hns_roce_rinl_sge {int dummy; } ;
struct TYPE_6__ {int wqe_cnt; struct hns_roce_rinl_wqe* wqe_list; } ;
struct TYPE_5__ {int wqe_cnt; } ;
struct hns_roce_qp {TYPE_3__ rq_inl_buf; TYPE_2__ rq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct hns_roce_rinl_wqe*) ;

__attribute__((used)) static int alloc_rq_inline_buf(struct hns_roce_qp *hr_qp,
          struct ib_qp_init_attr *init_attr)
{
 u32 max_recv_sge = init_attr->cap.max_recv_sge;
 struct hns_roce_rinl_wqe *wqe_list;
 u32 wqe_cnt = hr_qp->rq.wqe_cnt;
 int i;


 wqe_list = kcalloc(wqe_cnt, sizeof(struct hns_roce_rinl_wqe),
      GFP_KERNEL);

 if (!wqe_list)
  goto err;


 wqe_list[0].sg_list = kcalloc(wqe_cnt, (max_recv_sge *
          sizeof(struct hns_roce_rinl_sge)),
          GFP_KERNEL);
 if (!wqe_list[0].sg_list)
  goto err_wqe_list;


 for (i = 1; i < wqe_cnt; i++)
  wqe_list[i].sg_list = &wqe_list[0].sg_list[i * max_recv_sge];

 hr_qp->rq_inl_buf.wqe_list = wqe_list;
 hr_qp->rq_inl_buf.wqe_cnt = wqe_cnt;

 return 0;

err_wqe_list:
 kfree(wqe_list);

err:
 return -ENOMEM;
}
