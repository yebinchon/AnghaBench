
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u16 ;
struct regpair {int dummy; } ;
struct qedr_dev {int num_cnq; struct qedr_cnq* sgid_tbl; struct qedr_cnq* sb_array; struct qedr_cnq* cnq_array; scalar_t__ sb_start; int cdev; TYPE_3__* ops; int pdev; int iwarp_wq; int qps; int sgid_lock; } ;
struct qedr_cnq {int index; int pbl; int name; int * hw_cons_ptr; TYPE_1__* sb_virt; struct qedr_cnq* sb; struct qedr_dev* dev; } ;
typedef int __le16 ;
struct TYPE_6__ {TYPE_2__* common; scalar_t__ (* rdma_get_start_sb ) (int ) ;} ;
struct TYPE_5__ {int (* chain_alloc ) (int ,int ,int ,int ,int ,int,int *,int *) ;int (* chain_free ) (int ,int *) ;} ;
struct TYPE_4__ {int * pi_array; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_IWARP (struct qedr_dev*) ;
 int QEDR_MAX_SGID ;
 int QEDR_MSG_INIT ;
 int QEDR_ROCE_MAX_CNQ_SIZE ;
 int QED_CHAIN_CNT_TYPE_U16 ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_USE_TO_CONSUME ;
 int QED_RDMA_MAX_CNQ_SIZE ;
 size_t QED_ROCE_PROTOCOL_INDEX ;
 int XA_FLAGS_LOCK_IRQ ;
 int create_singlethread_workqueue (char*) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct qedr_cnq*) ;
 int min_t (int ,int ,int ) ;
 char* pci_name (int ) ;
 int qed_chain_get_cons_idx (int *) ;
 int qedr_alloc_mem_sb (struct qedr_dev*,struct qedr_cnq*,scalar_t__) ;
 int qedr_free_mem_sb (struct qedr_dev*,struct qedr_cnq*,scalar_t__) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int,char*) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,int ,int ,int ,int ,int,int *,int *) ;
 int stub3 (int ,int *) ;
 int u32 ;
 int xa_init_flags (int *,int ) ;

__attribute__((used)) static int qedr_alloc_resources(struct qedr_dev *dev)
{
 struct qedr_cnq *cnq;
 __le16 *cons_pi;
 u16 n_entries;
 int i, rc;

 dev->sgid_tbl = kcalloc(QEDR_MAX_SGID, sizeof(union ib_gid),
    GFP_KERNEL);
 if (!dev->sgid_tbl)
  return -ENOMEM;

 spin_lock_init(&dev->sgid_lock);

 if (IS_IWARP(dev)) {
  xa_init_flags(&dev->qps, XA_FLAGS_LOCK_IRQ);
  dev->iwarp_wq = create_singlethread_workqueue("qedr_iwarpq");
 }


 dev->sb_array = kcalloc(dev->num_cnq, sizeof(*dev->sb_array),
    GFP_KERNEL);
 if (!dev->sb_array) {
  rc = -ENOMEM;
  goto err1;
 }

 dev->cnq_array = kcalloc(dev->num_cnq,
     sizeof(*dev->cnq_array), GFP_KERNEL);
 if (!dev->cnq_array) {
  rc = -ENOMEM;
  goto err2;
 }

 dev->sb_start = dev->ops->rdma_get_start_sb(dev->cdev);


 n_entries = min_t(u32, QED_RDMA_MAX_CNQ_SIZE, QEDR_ROCE_MAX_CNQ_SIZE);
 for (i = 0; i < dev->num_cnq; i++) {
  cnq = &dev->cnq_array[i];

  rc = qedr_alloc_mem_sb(dev, &dev->sb_array[i],
           dev->sb_start + i);
  if (rc)
   goto err3;

  rc = dev->ops->common->chain_alloc(dev->cdev,
         QED_CHAIN_USE_TO_CONSUME,
         QED_CHAIN_MODE_PBL,
         QED_CHAIN_CNT_TYPE_U16,
         n_entries,
         sizeof(struct regpair *),
         &cnq->pbl, ((void*)0));
  if (rc)
   goto err4;

  cnq->dev = dev;
  cnq->sb = &dev->sb_array[i];
  cons_pi = dev->sb_array[i].sb_virt->pi_array;
  cnq->hw_cons_ptr = &cons_pi[QED_ROCE_PROTOCOL_INDEX];
  cnq->index = i;
  sprintf(cnq->name, "qedr%d@pci:%s", i, pci_name(dev->pdev));

  DP_DEBUG(dev, QEDR_MSG_INIT, "cnq[%d].cons=%d\n",
    i, qed_chain_get_cons_idx(&cnq->pbl));
 }

 return 0;
err4:
 qedr_free_mem_sb(dev, &dev->sb_array[i], dev->sb_start + i);
err3:
 for (--i; i >= 0; i--) {
  dev->ops->common->chain_free(dev->cdev, &dev->cnq_array[i].pbl);
  qedr_free_mem_sb(dev, &dev->sb_array[i], dev->sb_start + i);
 }
 kfree(dev->cnq_array);
err2:
 kfree(dev->sb_array);
err1:
 kfree(dev->sgid_tbl);
 return rc;
}
