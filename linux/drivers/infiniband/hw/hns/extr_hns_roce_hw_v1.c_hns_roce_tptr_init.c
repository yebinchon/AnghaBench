
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_buf_list {int map; int buf; } ;
struct TYPE_3__ {struct hns_roce_buf_list tptr_buf; } ;
struct hns_roce_v1_priv {TYPE_1__ tptr_table; } ;
struct hns_roce_dev {int tptr_size; int tptr_dma_addr; scalar_t__ priv; TYPE_2__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNS_ROCE_V1_TPTR_BUF_SIZE ;
 int dma_alloc_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static int hns_roce_tptr_init(struct hns_roce_dev *hr_dev)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_buf_list *tptr_buf;
 struct hns_roce_v1_priv *priv;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 tptr_buf = &priv->tptr_table.tptr_buf;







 tptr_buf->buf = dma_alloc_coherent(dev, HNS_ROCE_V1_TPTR_BUF_SIZE,
        &tptr_buf->map, GFP_KERNEL);
 if (!tptr_buf->buf)
  return -ENOMEM;

 hr_dev->tptr_dma_addr = tptr_buf->map;
 hr_dev->tptr_size = HNS_ROCE_V1_TPTR_BUF_SIZE;

 return 0;
}
