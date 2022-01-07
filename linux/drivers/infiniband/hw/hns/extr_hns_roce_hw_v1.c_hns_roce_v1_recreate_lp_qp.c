
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_free_mr {int free_mr_wq; } ;
struct hns_roce_v1_priv {struct hns_roce_free_mr free_mr; } ;
struct hns_roce_recreate_lp_qp_work {int comp_flag; int work; struct completion* comp; int * ib_dev; } ;
struct hns_roce_dev {int ib_dev; scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENOMEM ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 long HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS ;
 scalar_t__ HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE ;
 int INIT_WORK (int *,int ) ;
 int dev_warn (struct device*,char*) ;
 int hns_roce_v1_recreate_lp_qp_work_fn ;
 int init_completion (struct completion*) ;
 struct hns_roce_recreate_lp_qp_work* kzalloc (int,int ) ;
 int msleep (scalar_t__) ;
 int queue_work (int ,int *) ;
 scalar_t__ try_wait_for_completion (struct completion*) ;

__attribute__((used)) static int hns_roce_v1_recreate_lp_qp(struct hns_roce_dev *hr_dev)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_recreate_lp_qp_work *lp_qp_work;
 struct hns_roce_free_mr *free_mr;
 struct hns_roce_v1_priv *priv;
 struct completion comp;
 long end = HNS_ROCE_V1_RECREATE_LP_QP_TIMEOUT_MSECS;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 free_mr = &priv->free_mr;

 lp_qp_work = kzalloc(sizeof(struct hns_roce_recreate_lp_qp_work),
        GFP_KERNEL);
 if (!lp_qp_work)
  return -ENOMEM;

 INIT_WORK(&(lp_qp_work->work), hns_roce_v1_recreate_lp_qp_work_fn);

 lp_qp_work->ib_dev = &(hr_dev->ib_dev);
 lp_qp_work->comp = &comp;
 lp_qp_work->comp_flag = 1;

 init_completion(lp_qp_work->comp);

 queue_work(free_mr->free_mr_wq, &(lp_qp_work->work));

 while (end > 0) {
  if (try_wait_for_completion(&comp))
   return 0;
  msleep(HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE);
  end -= HNS_ROCE_V1_RECREATE_LP_QP_WAIT_VALUE;
 }

 lp_qp_work->comp_flag = 0;
 if (try_wait_for_completion(&comp))
  return 0;

 dev_warn(dev, "recreate lp qp failed 20s timeout and return failed!\n");
 return -ETIMEDOUT;
}
