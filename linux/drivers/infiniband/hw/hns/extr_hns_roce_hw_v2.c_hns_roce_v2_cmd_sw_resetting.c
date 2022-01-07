
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_v2_priv {struct hnae3_handle* handle; } ;
struct hns_roce_dev {int dis_db; scalar_t__ reset_cnt; int is_reset; scalar_t__ priv; } ;
struct hnae3_handle {TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {scalar_t__ (* ae_dev_reset_cnt ) (struct hnae3_handle*) ;} ;
struct TYPE_2__ {struct hnae3_ae_ops* ops; } ;


 int CMD_RST_PRC_EBUSY ;
 scalar_t__ stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns_roce_v2_cmd_sw_resetting(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_v2_priv *priv = (struct hns_roce_v2_priv *)hr_dev->priv;
 struct hnae3_handle *handle = priv->handle;
 const struct hnae3_ae_ops *ops = handle->ae_algo->ops;





 hr_dev->dis_db = 1;
 if (ops->ae_dev_reset_cnt(handle) != hr_dev->reset_cnt)
  hr_dev->is_reset = 1;

 return CMD_RST_PRC_EBUSY;
}
