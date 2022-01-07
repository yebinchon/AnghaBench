
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_v2_priv {struct hnae3_handle* handle; } ;
struct hns_roce_dev {int dis_db; int is_reset; scalar_t__ priv; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* get_hw_reset_stat ) (struct hnae3_handle*) ;} ;
struct TYPE_2__ {struct hnae3_ae_ops* ops; } ;


 int CMD_RST_PRC_EBUSY ;
 int CMD_RST_PRC_SUCCESS ;
 unsigned long HNS_ROCE_STATE_INIT ;
 unsigned long HNS_ROCE_STATE_RST_INIT ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns_roce_v2_cmd_hw_resetting(struct hns_roce_dev *hr_dev,
     unsigned long instance_stage,
     unsigned long reset_stage)
{
 struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;
 struct hnae3_handle *handle = priv->handle;
 const struct hnae3_ae_ops *ops = handle->ae_algo->ops;
 hr_dev->dis_db = 1;
 if (!ops->get_hw_reset_stat(handle))
  hr_dev->is_reset = 1;

 if (!hr_dev->is_reset || reset_stage == HNS_ROCE_STATE_RST_INIT ||
     instance_stage == HNS_ROCE_STATE_INIT)
  return CMD_RST_PRC_EBUSY;

 return CMD_RST_PRC_SUCCESS;
}
