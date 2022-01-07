
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int wqe_cnt; scalar_t__ offset; } ;
struct hns_roce_qp {scalar_t__ buff_size; int qpn; TYPE_1__ rq; } ;
struct hns_roce_dev {struct device* dev; } ;
struct device {int dummy; } ;


 int MTT_MIN_COUNT ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static bool check_wqe_rq_mtt_count(struct hns_roce_dev *hr_dev,
       struct hns_roce_qp *hr_qp, int mtt_cnt,
       u32 page_size)
{
 struct device *dev = hr_dev->dev;

 if (hr_qp->rq.wqe_cnt < 1)
  return 1;

 if (mtt_cnt < 1) {
  dev_err(dev, "qp(0x%lx) rqwqe buf ba find failed\n",
   hr_qp->qpn);
  return 0;
 }

 if (mtt_cnt < MTT_MIN_COUNT &&
  (hr_qp->rq.offset + page_size) < hr_qp->buff_size) {
  dev_err(dev, "qp(0x%lx) next rqwqe buf ba find failed\n",
   hr_qp->qpn);
  return 0;
 }

 return 1;
}
