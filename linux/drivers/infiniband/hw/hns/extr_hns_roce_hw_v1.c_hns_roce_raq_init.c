
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct hns_roce_raq_table {TYPE_2__* e_raq_buf; } ;
struct hns_roce_v1_priv {struct hns_roce_raq_table raq_table; } ;
struct hns_roce_dev {scalar_t__ priv; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
typedef int __le32 ;
struct TYPE_5__ {int map; int buf; } ;
struct TYPE_4__ {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HNS_ROCE_V1_EXT_RAQ_WF ;
 int HNS_ROCE_V1_RAQ_ENTRY ;
 int HNS_ROCE_V1_RAQ_SIZE ;
 int POL_TIME_INTERVAL_VAL ;
 int ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M ;
 int ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S ;
 int ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M ;
 int ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S ;
 int ROCEE_EXT_RAQ_H_REG ;
 int ROCEE_EXT_RAQ_REG ;
 int ROCEE_GLB_CFG_REG ;
 int ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S ;
 int ROCEE_RAQ_WL_REG ;
 int ROCEE_RAQ_WL_ROCEE_RAQ_WL_M ;
 int ROCEE_RAQ_WL_ROCEE_RAQ_WL_S ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_REG ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S ;
 int ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S ;
 int cpu_to_le32 (int) ;
 int dev_dbg (struct device*,char*,int) ;
 int dma_alloc_coherent (struct device*,int,int*,int ) ;
 int ilog2 (int) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int roce_read (struct hns_roce_dev*,int ) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;
 int roce_write (struct hns_roce_dev*,int ,int) ;

__attribute__((used)) static int hns_roce_raq_init(struct hns_roce_dev *hr_dev)
{
 int ret;
 u32 val;
 __le32 tmp;
 int raq_shift = 0;
 dma_addr_t addr;
 struct hns_roce_v1_priv *priv;
 struct hns_roce_raq_table *raq;
 struct device *dev = &hr_dev->pdev->dev;

 priv = (struct hns_roce_v1_priv *)hr_dev->priv;
 raq = &priv->raq_table;

 raq->e_raq_buf = kzalloc(sizeof(*(raq->e_raq_buf)), GFP_KERNEL);
 if (!raq->e_raq_buf)
  return -ENOMEM;

 raq->e_raq_buf->buf = dma_alloc_coherent(dev, HNS_ROCE_V1_RAQ_SIZE,
       &addr, GFP_KERNEL);
 if (!raq->e_raq_buf->buf) {
  ret = -ENOMEM;
  goto err_dma_alloc_raq;
 }
 raq->e_raq_buf->map = addr;


 roce_write(hr_dev, ROCEE_EXT_RAQ_REG, raq->e_raq_buf->map >> 12);


 raq_shift = ilog2(HNS_ROCE_V1_RAQ_SIZE / HNS_ROCE_V1_RAQ_ENTRY);
 val = roce_read(hr_dev, ROCEE_EXT_RAQ_H_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_M,
         ROCEE_EXT_RAQ_H_EXT_RAQ_SHIFT_S, raq_shift);





 roce_set_field(tmp, ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_M,
         ROCEE_EXT_RAQ_H_EXT_RAQ_BA_H_S,
         raq->e_raq_buf->map >> 44);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_EXT_RAQ_H_REG, val);
 dev_dbg(dev, "Configure raq_shift 0x%x.\n", val);


 val = roce_read(hr_dev, ROCEE_RAQ_WL_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp, ROCEE_RAQ_WL_ROCEE_RAQ_WL_M,
         ROCEE_RAQ_WL_ROCEE_RAQ_WL_S,
         HNS_ROCE_V1_EXT_RAQ_WF);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_RAQ_WL_REG, val);
 dev_dbg(dev, "Configure raq_wl 0x%x.\n", val);


 val = roce_read(hr_dev, ROCEE_WRMS_POL_TIME_INTERVAL_REG);
 tmp = cpu_to_le32(val);
 roce_set_field(tmp,
         ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_M,
         ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_POL_TIME_INTERVAL_S,
         POL_TIME_INTERVAL_VAL);
 roce_set_bit(tmp, ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_EXT_RAQ_MODE, 1);
 roce_set_field(tmp,
         ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_M,
         ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_CFG_S,
         2);
 roce_set_bit(tmp,
       ROCEE_WRMS_POL_TIME_INTERVAL_WRMS_RAQ_TIMEOUT_CHK_EN_S, 1);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_WRMS_POL_TIME_INTERVAL_REG, val);
 dev_dbg(dev, "Configure WrmsPolTimeInterval 0x%x.\n", val);


 val = roce_read(hr_dev, ROCEE_GLB_CFG_REG);
 tmp = cpu_to_le32(val);
 roce_set_bit(tmp, ROCEE_GLB_CFG_TRP_RAQ_DROP_EN_S, 1);
 val = le32_to_cpu(tmp);
 roce_write(hr_dev, ROCEE_GLB_CFG_REG, val);
 dev_dbg(dev, "Configure GlbCfg = 0x%x.\n", val);

 return 0;

err_dma_alloc_raq:
 kfree(raq->e_raq_buf);
 return ret;
}
