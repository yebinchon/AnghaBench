#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pfn; } ;
struct TYPE_7__ {TYPE_1__* eq; } ;
struct mthca_dev {int mthca_flags; TYPE_4__ driver_uar; int /*<<< orphan*/  kar; int /*<<< orphan*/  driver_pd; TYPE_3__* pdev; TYPE_2__ eq_table; int /*<<< orphan*/  doorbell_lock; } ;
typedef  int phys_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;
struct TYPE_6__ {int /*<<< orphan*/  msi_x_vector; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t MTHCA_EQ_CMD ; 
 int MTHCA_FLAG_MSI_X ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mthca_dev*) ; 
 int FUNC12 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct mthca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct mthca_dev*,char*,...) ; 
 int FUNC16 (struct mthca_dev*) ; 
 int FUNC17 (struct mthca_dev*) ; 
 int FUNC18 (struct mthca_dev*) ; 
 int FUNC19 (struct mthca_dev*) ; 
 int FUNC20 (struct mthca_dev*) ; 
 int FUNC21 (struct mthca_dev*) ; 
 int FUNC22 (struct mthca_dev*) ; 
 int FUNC23 (struct mthca_dev*) ; 
 int FUNC24 (struct mthca_dev*) ; 
 int FUNC25 (struct mthca_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct mthca_dev*,int /*<<< orphan*/ *) ; 
 int FUNC27 (struct mthca_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC28 (struct mthca_dev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (struct mthca_dev*,char*,...) ; 

__attribute__((used)) static int FUNC30(struct mthca_dev *dev)
{
	int err;

	FUNC0(&dev->doorbell_lock);

	err = FUNC24(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "user access region table, aborting.\n");
		return err;
	}

	err = FUNC27(dev, &dev->driver_uar);
	if (err) {
		FUNC15(dev, "Failed to allocate driver access region, "
			  "aborting.\n");
		goto err_uar_table_free;
	}

	dev->kar = FUNC1((phys_addr_t) dev->driver_uar.pfn << PAGE_SHIFT, PAGE_SIZE);
	if (!dev->kar) {
		FUNC15(dev, "Couldn't map kernel access region, "
			  "aborting.\n");
		err = -ENOMEM;
		goto err_uar_free;
	}

	err = FUNC21(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "protection domain table, aborting.\n");
		goto err_kar_unmap;
	}

	err = FUNC20(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "memory region table, aborting.\n");
		goto err_pd_table_free;
	}

	err = FUNC25(dev, 1, &dev->driver_pd);
	if (err) {
		FUNC15(dev, "Failed to create driver PD, "
			  "aborting.\n");
		goto err_mr_table_free;
	}

	err = FUNC18(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "event queue table, aborting.\n");
		goto err_pd_free;
	}

	err = FUNC12(dev);
	if (err) {
		FUNC15(dev, "Failed to switch to event-driven "
			  "firmware commands, aborting.\n");
		goto err_eq_table_free;
	}

	err = FUNC3(dev);
	if (err) {
		if (dev->mthca_flags & MTHCA_FLAG_MSI_X) {
			FUNC29(dev, "NOP command failed to generate interrupt "
				   "(IRQ %d).\n",
				   dev->eq_table.eq[MTHCA_EQ_CMD].msi_x_vector);
			FUNC29(dev, "Trying again with MSI-X disabled.\n");
		} else {
			FUNC15(dev, "NOP command failed to generate interrupt "
				  "(IRQ %d), aborting.\n",
				  dev->pdev->irq);
			FUNC15(dev, "BIOS or ACPI interrupt routing problem?\n");
		}

		goto err_cmd_poll;
	}

	FUNC14(dev, "NOP command IRQ test passed\n");

	err = FUNC17(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "completion queue table, aborting.\n");
		goto err_cmd_poll;
	}

	err = FUNC23(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "shared receive queue table, aborting.\n");
		goto err_cq_table_free;
	}

	err = FUNC22(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "queue pair table, aborting.\n");
		goto err_srq_table_free;
	}

	err = FUNC16(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "address vector table, aborting.\n");
		goto err_qp_table_free;
	}

	err = FUNC19(dev);
	if (err) {
		FUNC15(dev, "Failed to initialize "
			  "multicast group table, aborting.\n");
		goto err_av_table_free;
	}

	return 0;

err_av_table_free:
	FUNC4(dev);

err_qp_table_free:
	FUNC9(dev);

err_srq_table_free:
	FUNC10(dev);

err_cq_table_free:
	FUNC5(dev);

err_cmd_poll:
	FUNC13(dev);

err_eq_table_free:
	FUNC6(dev);

err_pd_free:
	FUNC26(dev, &dev->driver_pd);

err_mr_table_free:
	FUNC7(dev);

err_pd_table_free:
	FUNC8(dev);

err_kar_unmap:
	FUNC2(dev->kar);

err_uar_free:
	FUNC28(dev, &dev->driver_uar);

err_uar_table_free:
	FUNC11(dev);
	return err;
}