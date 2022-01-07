
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct hns_roce_v2_priv {struct hnae3_handle* handle; } ;
struct TYPE_11__ {TYPE_3__** netdevs; scalar_t__* phy_port; } ;
struct TYPE_9__ {int node_guid; } ;
struct TYPE_8__ {int num_ports; } ;
struct hns_roce_dev {int cmd_mod; int reset_cnt; scalar_t__ loop_idc; int * irq; TYPE_4__ iboe; TYPE_2__ ib_dev; TYPE_1__ caps; int reg_base; int sdb_offset; int odb_offset; int * dfx; int * hw; struct hns_roce_v2_priv* priv; } ;
struct TYPE_12__ {scalar_t__ base_vector; TYPE_3__* netdev; int roce_io_base; } ;
struct hnae3_handle {TYPE_7__* ae_algo; TYPE_5__ rinfo; int pdev; } ;
struct TYPE_14__ {TYPE_6__* ops; } ;
struct TYPE_13__ {int (* ae_dev_reset_cnt ) (struct hnae3_handle*) ;} ;
struct TYPE_10__ {int dev_addr; } ;


 int HNS_ROCE_V2_MAX_IRQ_NUM ;
 int ROCEE_DB_SQ_L_0_REG ;
 int addrconf_addr_eui48 (int *,int ) ;
 int hns_roce_dfx_hw_v2 ;
 int hns_roce_hw_v2 ;
 int pci_irq_vector (int ,scalar_t__) ;
 int stub1 (struct hnae3_handle*) ;

__attribute__((used)) static int hns_roce_hw_v2_get_cfg(struct hns_roce_dev *hr_dev,
      struct hnae3_handle *handle)
{
 struct hns_roce_v2_priv *priv = hr_dev->priv;
 int i;

 hr_dev->hw = &hns_roce_hw_v2;
 hr_dev->dfx = &hns_roce_dfx_hw_v2;
 hr_dev->sdb_offset = ROCEE_DB_SQ_L_0_REG;
 hr_dev->odb_offset = hr_dev->sdb_offset;


 hr_dev->reg_base = handle->rinfo.roce_io_base;
 hr_dev->caps.num_ports = 1;
 hr_dev->iboe.netdevs[0] = handle->rinfo.netdev;
 hr_dev->iboe.phy_port[0] = 0;

 addrconf_addr_eui48((u8 *)&hr_dev->ib_dev.node_guid,
       hr_dev->iboe.netdevs[0]->dev_addr);

 for (i = 0; i < HNS_ROCE_V2_MAX_IRQ_NUM; i++)
  hr_dev->irq[i] = pci_irq_vector(handle->pdev,
      i + handle->rinfo.base_vector);


 hr_dev->cmd_mod = 1;
 hr_dev->loop_idc = 0;

 hr_dev->reset_cnt = handle->ae_algo->ops->ae_dev_reset_cnt(handle);
 priv->handle = handle;

 return 0;
}
