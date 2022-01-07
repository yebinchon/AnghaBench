
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crq; int csq; } ;
struct hns_roce_v2_priv {TYPE_1__ cmq; } ;
struct hns_roce_dev {scalar_t__ priv; } ;


 int hns_roce_free_cmq_desc (struct hns_roce_dev*,int *) ;

__attribute__((used)) static void hns_roce_v2_cmq_exit(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;

 hns_roce_free_cmq_desc(hr_dev, &priv->cmq.csq);
 hns_roce_free_cmq_desc(hr_dev, &priv->cmq.crq);
}
