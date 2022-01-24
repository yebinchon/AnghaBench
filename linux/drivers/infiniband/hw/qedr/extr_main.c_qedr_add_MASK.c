#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qedr_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  enet_state; int /*<<< orphan*/  wq_multiplier; int /*<<< orphan*/  num_cnq; TYPE_3__* ops; int /*<<< orphan*/  rdma_ctx; int /*<<< orphan*/  affin_hwfn_idx; int /*<<< orphan*/  num_hwfns; int /*<<< orphan*/  rdma_type; int /*<<< orphan*/  user_dpm_enabled; struct qed_dev* cdev; struct net_device* ndev; struct pci_dev* pdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_hwfns; } ;
struct qed_dev_rdma_info {TYPE_1__ common; int /*<<< orphan*/  rdma_type; int /*<<< orphan*/  user_dpm_enabled; } ;
struct qed_dev {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int (* fill_dev_info ) (struct qed_dev*,struct qed_dev_rdma_info*) ;int (* iwarp_set_engine_affin ) (struct qed_dev*,int) ;int /*<<< orphan*/  (* rdma_get_min_cnq_msix ) (struct qed_dev*) ;int /*<<< orphan*/  (* rdma_get_rdma_ctx ) (struct qed_dev*) ;TYPE_2__* common; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_affin_hwfn_idx ) (struct qed_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 scalar_t__ FUNC2 (struct qedr_dev*) ; 
 int /*<<< orphan*/  QEDR_ENET_STATE_BIT ; 
 scalar_t__ FUNC3 (struct qedr_dev*) ; 
 int /*<<< orphan*/  QEDR_MSG_INIT ; 
 int /*<<< orphan*/  QEDR_PORT ; 
 int /*<<< orphan*/  QEDR_WQ_MULTIPLIER_DFT ; 
 struct qedr_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ibdev ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_3__* FUNC7 () ; 
 TYPE_3__* qed_ops ; 
 int FUNC8 (struct qedr_dev*) ; 
 int /*<<< orphan*/  qedr_dev ; 
 int /*<<< orphan*/  FUNC9 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qedr_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedr_dev*,struct pci_dev*) ; 
 int FUNC13 (struct qedr_dev*) ; 
 int FUNC14 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct qedr_dev*) ; 
 int FUNC17 (struct qed_dev*,struct qed_dev_rdma_info*) ; 
 int FUNC18 (struct qed_dev*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct qedr_dev *FUNC23(struct qed_dev *cdev, struct pci_dev *pdev,
				 struct net_device *ndev)
{
	struct qed_dev_rdma_info dev_info;
	struct qedr_dev *dev;
	int rc = 0;

	dev = FUNC4(qedr_dev, ibdev);
	if (!dev) {
		FUNC6("Unable to allocate ib device\n");
		return NULL;
	}

	FUNC0(dev, QEDR_MSG_INIT, "qedr add device called\n");

	dev->pdev = pdev;
	dev->ndev = ndev;
	dev->cdev = cdev;

	qed_ops = FUNC7();
	if (!qed_ops) {
		FUNC1(dev, "Failed to get qed roce operations\n");
		goto init_err;
	}

	dev->ops = qed_ops;
	rc = qed_ops->fill_dev_info(cdev, &dev_info);
	if (rc)
		goto init_err;

	dev->user_dpm_enabled = dev_info.user_dpm_enabled;
	dev->rdma_type = dev_info.rdma_type;
	dev->num_hwfns = dev_info.common.num_hwfns;

	if (FUNC2(dev) && FUNC3(dev)) {
		rc = dev->ops->iwarp_set_engine_affin(cdev, false);
		if (rc) {
			FUNC1(dev, "iWARP is disabled over a 100g device Enabling it may impact L2 performance. To enable it run devlink dev param set <dev> name iwarp_cmt value true cmode runtime\n");
			goto init_err;
		}
	}
	dev->affin_hwfn_idx = dev->ops->common->get_affin_hwfn_idx(cdev);

	dev->rdma_ctx = dev->ops->rdma_get_rdma_ctx(cdev);

	dev->num_cnq = dev->ops->rdma_get_min_cnq_msix(cdev);
	if (!dev->num_cnq) {
		FUNC1(dev, "Failed. At least one CNQ is required.\n");
		rc = -ENOMEM;
		goto init_err;
	}

	dev->wq_multiplier = QEDR_WQ_MULTIPLIER_DFT;

	FUNC12(dev, pdev);

	rc = FUNC8(dev);
	if (rc)
		goto init_err;

	rc = FUNC11(dev);
	if (rc)
		goto alloc_err;

	rc = FUNC14(dev);
	if (rc)
		goto irq_err;

	rc = FUNC13(dev);
	if (rc) {
		FUNC1(dev, "Unable to allocate register device\n");
		goto reg_err;
	}

	if (!FUNC22(QEDR_ENET_STATE_BIT, &dev->enet_state))
		FUNC10(dev, QEDR_PORT, IB_EVENT_PORT_ACTIVE);

	FUNC0(dev, QEDR_MSG_INIT, "qedr driver loaded successfully\n");
	return dev;

reg_err:
	FUNC16(dev);
irq_err:
	FUNC15(dev);
alloc_err:
	FUNC9(dev);
init_err:
	FUNC5(&dev->ibdev);
	FUNC1(dev, "qedr driver load failed rc=%d\n", rc);

	return NULL;
}