
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct cmdq_init {void* creq_ring_id; void* cmdq_size_cmdq_lvl; int cmdq_pbl; } ;
struct TYPE_6__ {int level; TYPE_2__* pbl; } ;
struct bnxt_qplib_rcfw {int cmdq_depth; int bmap_size; int cmdq_bar_reg; int creq_bar_reg; int (* aeq_handler ) (struct bnxt_qplib_rcfw*,void*,void*) ;int creq_ring_id; int * cmdq_bar_reg_iomem; TYPE_3__ cmdq; TYPE_1__* pdev; int waitq; scalar_t__ creq_func_event_processed; scalar_t__ creq_qp_event_processed; void* creq_bar_reg_iomem; int cmdq_bar_reg_trig_off; int cmdq_bar_reg_prod_off; int cmdq_bitmap; int flags; scalar_t__ seq_num; } ;
typedef scalar_t__ resource_size_t ;
typedef int init ;
struct TYPE_5__ {int * pg_map_arr; } ;
struct TYPE_4__ {int dev; } ;


 int BITS_TO_LONGS (int) ;
 int CMDQ_INIT_CMDQ_LVL_MASK ;
 int CMDQ_INIT_CMDQ_LVL_SFT ;
 int CMDQ_INIT_CMDQ_SIZE_MASK ;
 int CMDQ_INIT_CMDQ_SIZE_SFT ;
 int ENOMEM ;
 int FIRMWARE_FIRST_FLAG ;
 int GFP_KERNEL ;
 size_t PBL_LVL_0 ;
 scalar_t__ RCFW_COMM_BASE_OFFSET ;
 int RCFW_COMM_CONS_PCI_BAR_REGION ;
 int RCFW_COMM_PCI_BAR_REGION ;
 int RCFW_COMM_SIZE ;
 int RCFW_COMM_TRIG_OFFSET ;
 int RCFW_PF_COMM_PROD_OFFSET ;
 int RCFW_VF_COMM_PROD_OFFSET ;
 int __iowrite32_copy (int *,struct cmdq_init*,int) ;
 int bnxt_qplib_disable_rcfw_channel (struct bnxt_qplib_rcfw*) ;
 int bnxt_qplib_rcfw_start_irq (struct bnxt_qplib_rcfw*,int,int) ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int *,char*,int) ;
 int init_waitqueue_head (int *) ;
 void* ioremap_nocache (scalar_t__,int) ;
 int iounmap (int *) ;
 int kzalloc (int,int ) ;
 scalar_t__ pci_resource_start (struct pci_dev*,int) ;
 int set_bit (int ,int *) ;

int bnxt_qplib_enable_rcfw_channel(struct pci_dev *pdev,
       struct bnxt_qplib_rcfw *rcfw,
       int msix_vector,
       int cp_bar_reg_off, int virt_fn,
       int (*aeq_handler)(struct bnxt_qplib_rcfw *,
            void *, void *))
{
 resource_size_t res_base;
 struct cmdq_init init;
 u16 bmap_size;
 int rc;


 rcfw->seq_num = 0;
 set_bit(FIRMWARE_FIRST_FLAG, &rcfw->flags);
 bmap_size = BITS_TO_LONGS(rcfw->cmdq_depth) * sizeof(unsigned long);
 rcfw->cmdq_bitmap = kzalloc(bmap_size, GFP_KERNEL);
 if (!rcfw->cmdq_bitmap)
  return -ENOMEM;
 rcfw->bmap_size = bmap_size;


 rcfw->cmdq_bar_reg = RCFW_COMM_PCI_BAR_REGION;
 res_base = pci_resource_start(pdev, rcfw->cmdq_bar_reg);
 if (!res_base)
  return -ENOMEM;

 rcfw->cmdq_bar_reg_iomem = ioremap_nocache(res_base +
           RCFW_COMM_BASE_OFFSET,
           RCFW_COMM_SIZE);
 if (!rcfw->cmdq_bar_reg_iomem) {
  dev_err(&rcfw->pdev->dev, "CMDQ BAR region %d mapping failed\n",
   rcfw->cmdq_bar_reg);
  return -ENOMEM;
 }

 rcfw->cmdq_bar_reg_prod_off = virt_fn ? RCFW_VF_COMM_PROD_OFFSET :
     RCFW_PF_COMM_PROD_OFFSET;

 rcfw->cmdq_bar_reg_trig_off = RCFW_COMM_TRIG_OFFSET;


 rcfw->creq_bar_reg = RCFW_COMM_CONS_PCI_BAR_REGION;
 res_base = pci_resource_start(pdev, rcfw->creq_bar_reg);
 if (!res_base)
  dev_err(&rcfw->pdev->dev,
   "CREQ BAR region %d resc start is 0!\n",
   rcfw->creq_bar_reg);

 rcfw->creq_bar_reg_iomem = ioremap_nocache(res_base + cp_bar_reg_off,
         8);
 if (!rcfw->creq_bar_reg_iomem) {
  dev_err(&rcfw->pdev->dev, "CREQ BAR region %d mapping failed\n",
   rcfw->creq_bar_reg);
  iounmap(rcfw->cmdq_bar_reg_iomem);
  rcfw->cmdq_bar_reg_iomem = ((void*)0);
  return -ENOMEM;
 }
 rcfw->creq_qp_event_processed = 0;
 rcfw->creq_func_event_processed = 0;

 if (aeq_handler)
  rcfw->aeq_handler = aeq_handler;
 init_waitqueue_head(&rcfw->waitq);

 rc = bnxt_qplib_rcfw_start_irq(rcfw, msix_vector, 1);
 if (rc) {
  dev_err(&rcfw->pdev->dev,
   "Failed to request IRQ for CREQ rc = 0x%x\n", rc);
  bnxt_qplib_disable_rcfw_channel(rcfw);
  return rc;
 }

 init.cmdq_pbl = cpu_to_le64(rcfw->cmdq.pbl[PBL_LVL_0].pg_map_arr[0]);
 init.cmdq_size_cmdq_lvl = cpu_to_le16(
  ((rcfw->cmdq_depth << CMDQ_INIT_CMDQ_SIZE_SFT) &
   CMDQ_INIT_CMDQ_SIZE_MASK) |
  ((rcfw->cmdq.level << CMDQ_INIT_CMDQ_LVL_SFT) &
   CMDQ_INIT_CMDQ_LVL_MASK));
 init.creq_ring_id = cpu_to_le16(rcfw->creq_ring_id);


 __iowrite32_copy(rcfw->cmdq_bar_reg_iomem, &init, sizeof(init) / 4);
 return 0;
}
