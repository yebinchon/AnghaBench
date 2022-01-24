#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pasid_state {int /*<<< orphan*/  lock; TYPE_1__* pri; scalar_t__ invalid; } ;
struct notifier_block {int dummy; } ;
struct iommu_dev_data {scalar_t__ defer_attach; } ;
struct fault {int tag; int finish; int /*<<< orphan*/  work; int /*<<< orphan*/  flags; int /*<<< orphan*/  pasid; struct pasid_state* state; int /*<<< orphan*/  address; struct device_state* dev_state; } ;
struct device_state {struct pci_dev* pdev; } ;
struct amd_iommu_fault {int tag; int device_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  pasid; int /*<<< orphan*/  address; } ;
struct TYPE_2__ {int finish; int /*<<< orphan*/  inflight; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PPR_INVALID ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * amd_iommu_rlookup_table ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  do_fault ; 
 int /*<<< orphan*/  FUNC4 (struct device_state*,struct pasid_state*,int) ; 
 struct iommu_dev_data* FUNC5 (int /*<<< orphan*/ *) ; 
 struct device_state* FUNC6 (int) ; 
 struct pasid_state* FUNC7 (struct device_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iommu_wq ; 
 struct fault* FUNC8 (int,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct pasid_state*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct notifier_block *nb, unsigned long e, void *data)
{
	struct amd_iommu_fault *iommu_fault;
	struct pasid_state *pasid_state;
	struct device_state *dev_state;
	unsigned long flags;
	struct fault *fault;
	bool finish;
	u16 tag, devid;
	int ret;
	struct iommu_dev_data *dev_data;
	struct pci_dev *pdev = NULL;

	iommu_fault = data;
	tag         = iommu_fault->tag & 0x1ff;
	finish      = (iommu_fault->tag >> 9) & 1;

	devid = iommu_fault->device_id;
	pdev = FUNC9(0, FUNC1(devid),
					   devid & 0xff);
	if (!pdev)
		return -ENODEV;
	dev_data = FUNC5(&pdev->dev);

	/* In kdump kernel pci dev is not initialized yet -> send INVALID */
	ret = NOTIFY_DONE;
	if (FUNC15(amd_iommu_rlookup_table[devid])
		&& dev_data->defer_attach) {
		FUNC2(pdev, iommu_fault->pasid,
				       PPR_INVALID, tag);
		goto out;
	}

	dev_state = FUNC6(iommu_fault->device_id);
	if (dev_state == NULL)
		goto out;

	pasid_state = FUNC7(dev_state, iommu_fault->pasid);
	if (pasid_state == NULL || pasid_state->invalid) {
		/* We know the device but not the PASID -> send INVALID */
		FUNC2(dev_state->pdev, iommu_fault->pasid,
				       PPR_INVALID, tag);
		goto out_drop_state;
	}

	FUNC13(&pasid_state->lock, flags);
	FUNC3(&pasid_state->pri[tag].inflight);
	if (finish)
		pasid_state->pri[tag].finish = true;
	FUNC14(&pasid_state->lock, flags);

	fault = FUNC8(sizeof(*fault), GFP_ATOMIC);
	if (fault == NULL) {
		/* We are OOM - send success and let the device re-fault */
		FUNC4(dev_state, pasid_state, tag);
		goto out_drop_state;
	}

	fault->dev_state = dev_state;
	fault->address   = iommu_fault->address;
	fault->state     = pasid_state;
	fault->tag       = tag;
	fault->finish    = finish;
	fault->pasid     = iommu_fault->pasid;
	fault->flags     = iommu_fault->flags;
	FUNC0(&fault->work, do_fault);

	FUNC12(iommu_wq, &fault->work);

	ret = NOTIFY_OK;

out_drop_state:

	if (ret != NOTIFY_OK && pasid_state)
		FUNC11(pasid_state);

	FUNC10(dev_state);

out:
	return ret;
}