
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int lock; int desc_num; } ;
struct TYPE_4__ {int lock; int desc_num; } ;
struct TYPE_5__ {TYPE_3__ csq; int tx_timeout; TYPE_1__ crq; } ;
struct hns_roce_v2_priv {TYPE_2__ cmq; } ;
struct hns_roce_dev {int dev; scalar_t__ priv; } ;


 int CMD_CRQ_DESC_NUM ;
 int CMD_CSQ_DESC_NUM ;
 int HNS_ROCE_CMQ_TX_TIMEOUT ;
 int TYPE_CRQ ;
 int TYPE_CSQ ;
 int dev_err (int ,char*,int) ;
 int hns_roce_cmq_init_regs (struct hns_roce_dev*,int ) ;
 int hns_roce_free_cmq_desc (struct hns_roce_dev*,TYPE_3__*) ;
 int hns_roce_init_cmq_ring (struct hns_roce_dev*,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int hns_roce_v2_cmq_init(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;
 int ret;


 priv->cmq.csq.desc_num = CMD_CSQ_DESC_NUM;
 priv->cmq.crq.desc_num = CMD_CRQ_DESC_NUM;


 spin_lock_init(&priv->cmq.csq.lock);
 spin_lock_init(&priv->cmq.crq.lock);


 priv->cmq.tx_timeout = HNS_ROCE_CMQ_TX_TIMEOUT;


 ret = hns_roce_init_cmq_ring(hr_dev, TYPE_CSQ);
 if (ret) {
  dev_err(hr_dev->dev, "Init CSQ error, ret = %d.\n", ret);
  return ret;
 }


 ret = hns_roce_init_cmq_ring(hr_dev, TYPE_CRQ);
 if (ret) {
  dev_err(hr_dev->dev, "Init CRQ error, ret = %d.\n", ret);
  goto err_crq;
 }


 hns_roce_cmq_init_regs(hr_dev, TYPE_CSQ);


 hns_roce_cmq_init_regs(hr_dev, TYPE_CRQ);

 return 0;

err_crq:
 hns_roce_free_cmq_desc(hr_dev, &priv->cmq.csq);

 return ret;
}
