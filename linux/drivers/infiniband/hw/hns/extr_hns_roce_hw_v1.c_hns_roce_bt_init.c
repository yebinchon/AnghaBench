
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int map; void* buf; } ;
struct TYPE_8__ {int map; void* buf; } ;
struct TYPE_7__ {void* buf; int map; } ;
struct TYPE_10__ {TYPE_4__ qpc_buf; TYPE_3__ mtpt_buf; TYPE_2__ cqc_buf; } ;
struct hns_roce_v1_priv {TYPE_5__ bt_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNS_ROCE_BT_RSV_BUF_SIZE ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,void*,int ) ;

__attribute__((used)) static int hns_roce_bt_init(struct hns_roce_dev *hr_dev)
{
 struct device *dev = &hr_dev->pdev->dev;
 struct hns_roce_v1_priv *priv;
 int ret;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;

 priv->bt_table.qpc_buf.buf = dma_alloc_coherent(dev,
  HNS_ROCE_BT_RSV_BUF_SIZE, &priv->bt_table.qpc_buf.map,
  GFP_KERNEL);
 if (!priv->bt_table.qpc_buf.buf)
  return -ENOMEM;

 priv->bt_table.mtpt_buf.buf = dma_alloc_coherent(dev,
  HNS_ROCE_BT_RSV_BUF_SIZE, &priv->bt_table.mtpt_buf.map,
  GFP_KERNEL);
 if (!priv->bt_table.mtpt_buf.buf) {
  ret = -ENOMEM;
  goto err_failed_alloc_mtpt_buf;
 }

 priv->bt_table.cqc_buf.buf = dma_alloc_coherent(dev,
  HNS_ROCE_BT_RSV_BUF_SIZE, &priv->bt_table.cqc_buf.map,
  GFP_KERNEL);
 if (!priv->bt_table.cqc_buf.buf) {
  ret = -ENOMEM;
  goto err_failed_alloc_cqc_buf;
 }

 return 0;

err_failed_alloc_cqc_buf:
 dma_free_coherent(dev, HNS_ROCE_BT_RSV_BUF_SIZE,
  priv->bt_table.mtpt_buf.buf, priv->bt_table.mtpt_buf.map);

err_failed_alloc_mtpt_buf:
 dma_free_coherent(dev, HNS_ROCE_BT_RSV_BUF_SIZE,
  priv->bt_table.qpc_buf.buf, priv->bt_table.qpc_buf.map);

 return ret;
}
