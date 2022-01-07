
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_free_mr {int free_mr_wq; } ;
struct hns_roce_v1_priv {struct hns_roce_free_mr free_mr; } ;
struct hns_roce_dev {scalar_t__ priv; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int hns_roce_v1_release_lp_qp (struct hns_roce_dev*) ;

__attribute__((used)) static void hns_roce_free_mr_free(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_free_mr *free_mr;
 struct hns_roce_v1_priv *priv;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 free_mr = &priv->free_mr;

 flush_workqueue(free_mr->free_mr_wq);
 destroy_workqueue(free_mr->free_mr_wq);

 hns_roce_v1_release_lp_qp(hr_dev);
}
