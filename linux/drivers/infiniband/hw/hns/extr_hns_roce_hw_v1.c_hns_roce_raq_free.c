
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_raq_table {TYPE_2__* e_raq_buf; } ;
struct hns_roce_v1_priv {struct hns_roce_raq_table raq_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int map; int buf; } ;
struct TYPE_3__ {struct device dev; } ;


 int HNS_ROCE_V1_RAQ_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void hns_roce_raq_free(struct hns_roce_dev *hr_dev)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_v1_priv *priv;
 struct hns_roce_raq_table *raq;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 raq = &priv->raq_table;

 dma_free_coherent(dev, HNS_ROCE_V1_RAQ_SIZE, raq->e_raq_buf->buf,
     raq->e_raq_buf->map);
 kfree(raq->e_raq_buf);
}
