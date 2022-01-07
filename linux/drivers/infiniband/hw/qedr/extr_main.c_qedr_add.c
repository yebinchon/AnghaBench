
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qedr_dev {int ibdev; int enet_state; int wq_multiplier; int num_cnq; TYPE_3__* ops; int rdma_ctx; int affin_hwfn_idx; int num_hwfns; int rdma_type; int user_dpm_enabled; struct qed_dev* cdev; struct net_device* ndev; struct pci_dev* pdev; } ;
struct TYPE_5__ {int num_hwfns; } ;
struct qed_dev_rdma_info {TYPE_1__ common; int rdma_type; int user_dpm_enabled; } ;
struct qed_dev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int (* fill_dev_info ) (struct qed_dev*,struct qed_dev_rdma_info*) ;int (* iwarp_set_engine_affin ) (struct qed_dev*,int) ;int (* rdma_get_min_cnq_msix ) (struct qed_dev*) ;int (* rdma_get_rdma_ctx ) (struct qed_dev*) ;TYPE_2__* common; } ;
struct TYPE_6__ {int (* get_affin_hwfn_idx ) (struct qed_dev*) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*) ;
 int DP_ERR (struct qedr_dev*,char*,...) ;
 int ENOMEM ;
 int IB_EVENT_PORT_ACTIVE ;
 scalar_t__ IS_IWARP (struct qedr_dev*) ;
 int QEDR_ENET_STATE_BIT ;
 scalar_t__ QEDR_IS_CMT (struct qedr_dev*) ;
 int QEDR_MSG_INIT ;
 int QEDR_PORT ;
 int QEDR_WQ_MULTIPLIER_DFT ;
 struct qedr_dev* ib_alloc_device (int ,int ) ;
 int ib_dealloc_device (int *) ;
 int ibdev ;
 int pr_err (char*) ;
 TYPE_3__* qed_get_rdma_ops () ;
 TYPE_3__* qed_ops ;
 int qedr_alloc_resources (struct qedr_dev*) ;
 int qedr_dev ;
 int qedr_free_resources (struct qedr_dev*) ;
 int qedr_ib_dispatch_event (struct qedr_dev*,int ,int ) ;
 int qedr_init_hw (struct qedr_dev*) ;
 int qedr_pci_set_atomic (struct qedr_dev*,struct pci_dev*) ;
 int qedr_register_device (struct qedr_dev*) ;
 int qedr_setup_irqs (struct qedr_dev*) ;
 int qedr_stop_hw (struct qedr_dev*) ;
 int qedr_sync_free_irqs (struct qedr_dev*) ;
 int stub1 (struct qed_dev*,struct qed_dev_rdma_info*) ;
 int stub2 (struct qed_dev*,int) ;
 int stub3 (struct qed_dev*) ;
 int stub4 (struct qed_dev*) ;
 int stub5 (struct qed_dev*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static struct qedr_dev *qedr_add(struct qed_dev *cdev, struct pci_dev *pdev,
     struct net_device *ndev)
{
 struct qed_dev_rdma_info dev_info;
 struct qedr_dev *dev;
 int rc = 0;

 dev = ib_alloc_device(qedr_dev, ibdev);
 if (!dev) {
  pr_err("Unable to allocate ib device\n");
  return ((void*)0);
 }

 DP_DEBUG(dev, QEDR_MSG_INIT, "qedr add device called\n");

 dev->pdev = pdev;
 dev->ndev = ndev;
 dev->cdev = cdev;

 qed_ops = qed_get_rdma_ops();
 if (!qed_ops) {
  DP_ERR(dev, "Failed to get qed roce operations\n");
  goto init_err;
 }

 dev->ops = qed_ops;
 rc = qed_ops->fill_dev_info(cdev, &dev_info);
 if (rc)
  goto init_err;

 dev->user_dpm_enabled = dev_info.user_dpm_enabled;
 dev->rdma_type = dev_info.rdma_type;
 dev->num_hwfns = dev_info.common.num_hwfns;

 if (IS_IWARP(dev) && QEDR_IS_CMT(dev)) {
  rc = dev->ops->iwarp_set_engine_affin(cdev, 0);
  if (rc) {
   DP_ERR(dev, "iWARP is disabled over a 100g device Enabling it may impact L2 performance. To enable it run devlink dev param set <dev> name iwarp_cmt value true cmode runtime\n");
   goto init_err;
  }
 }
 dev->affin_hwfn_idx = dev->ops->common->get_affin_hwfn_idx(cdev);

 dev->rdma_ctx = dev->ops->rdma_get_rdma_ctx(cdev);

 dev->num_cnq = dev->ops->rdma_get_min_cnq_msix(cdev);
 if (!dev->num_cnq) {
  DP_ERR(dev, "Failed. At least one CNQ is required.\n");
  rc = -ENOMEM;
  goto init_err;
 }

 dev->wq_multiplier = QEDR_WQ_MULTIPLIER_DFT;

 qedr_pci_set_atomic(dev, pdev);

 rc = qedr_alloc_resources(dev);
 if (rc)
  goto init_err;

 rc = qedr_init_hw(dev);
 if (rc)
  goto alloc_err;

 rc = qedr_setup_irqs(dev);
 if (rc)
  goto irq_err;

 rc = qedr_register_device(dev);
 if (rc) {
  DP_ERR(dev, "Unable to allocate register device\n");
  goto reg_err;
 }

 if (!test_and_set_bit(QEDR_ENET_STATE_BIT, &dev->enet_state))
  qedr_ib_dispatch_event(dev, QEDR_PORT, IB_EVENT_PORT_ACTIVE);

 DP_DEBUG(dev, QEDR_MSG_INIT, "qedr driver loaded successfully\n");
 return dev;

reg_err:
 qedr_sync_free_irqs(dev);
irq_err:
 qedr_stop_hw(dev);
alloc_err:
 qedr_free_resources(dev);
init_err:
 ib_dealloc_device(&dev->ibdev);
 DP_ERR(dev, "qedr driver load failed rc=%d\n", rc);

 return ((void*)0);
}
