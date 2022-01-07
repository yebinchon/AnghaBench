
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; } ;
struct TYPE_6__ {scalar_t__ sge_cnt; int offset; } ;
struct TYPE_5__ {int offset; } ;
struct hns_roce_qp {int buff_size; TYPE_4__ rq; TYPE_2__ sge; TYPE_1__ sq; } ;
struct TYPE_7__ {int wqe_rq_hop_num; int wqe_sge_hop_num; int wqe_sq_hop_num; } ;
struct hns_roce_dev {TYPE_3__ caps; } ;
struct hns_roce_buf_region {int dummy; } ;


 int DIV_ROUND_UP (int,int) ;
 int hns_roce_init_buf_region (struct hns_roce_buf_region*,int ,int,int) ;

__attribute__((used)) static int split_wqe_buf_region(struct hns_roce_dev *hr_dev,
    struct hns_roce_qp *hr_qp,
    struct hns_roce_buf_region *regions,
    int region_max, int page_shift)
{
 int page_size = 1 << page_shift;
 bool is_extend_sge;
 int region_cnt = 0;
 int buf_size;
 int buf_cnt;

 if (hr_qp->buff_size < 1 || region_max < 1)
  return region_cnt;

 if (hr_qp->sge.sge_cnt > 0)
  is_extend_sge = 1;
 else
  is_extend_sge = 0;


 if (is_extend_sge)
  buf_size = hr_qp->sge.offset - hr_qp->sq.offset;
 else
  buf_size = hr_qp->rq.offset - hr_qp->sq.offset;

 if (buf_size > 0 && region_cnt < region_max) {
  buf_cnt = DIV_ROUND_UP(buf_size, page_size);
  hns_roce_init_buf_region(&regions[region_cnt],
      hr_dev->caps.wqe_sq_hop_num,
      hr_qp->sq.offset / page_size,
      buf_cnt);
  region_cnt++;
 }


 if (is_extend_sge) {
  buf_size = hr_qp->rq.offset - hr_qp->sge.offset;
  if (buf_size > 0 && region_cnt < region_max) {
   buf_cnt = DIV_ROUND_UP(buf_size, page_size);
   hns_roce_init_buf_region(&regions[region_cnt],
       hr_dev->caps.wqe_sge_hop_num,
       hr_qp->sge.offset / page_size,
       buf_cnt);
   region_cnt++;
  }
 }


 buf_size = hr_qp->buff_size - hr_qp->rq.offset;
 if (buf_size > 0) {
  buf_cnt = DIV_ROUND_UP(buf_size, page_size);
  hns_roce_init_buf_region(&regions[region_cnt],
      hr_dev->caps.wqe_rq_hop_num,
      hr_qp->rq.offset / page_size,
      buf_cnt);
  region_cnt++;
 }

 return region_cnt;
}
