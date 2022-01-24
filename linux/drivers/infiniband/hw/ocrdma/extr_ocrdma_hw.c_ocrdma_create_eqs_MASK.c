#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ocrdma_eq {int dummy; } ;
struct TYPE_7__ {int num_vectors; int start_vector; } ;
struct TYPE_8__ {scalar_t__ intr_mode; TYPE_1__ msix; } ;
struct ocrdma_dev {int id; int eq_cnt; TYPE_3__* eq_tbl; TYPE_2__ nic_info; } ;
struct TYPE_9__ {int /*<<< orphan*/  irq_name; } ;

/* Variables and functions */
 scalar_t__ BE_INTERRUPT_MODE_INTX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  OCRDMA_EQ_LEN ; 
 TYPE_3__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct ocrdma_dev*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocrdma_dev*) ; 
 int FUNC5 (struct ocrdma_dev*,TYPE_3__*) ; 
 int /*<<< orphan*/  ocrdma_irq_handler ; 
 int FUNC6 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  u32 ; 

__attribute__((used)) static int FUNC8(struct ocrdma_dev *dev)
{
	int num_eq, i, status = 0;
	int irq;
	unsigned long flags = 0;

	num_eq = dev->nic_info.msix.num_vectors -
			dev->nic_info.msix.start_vector;
	if (dev->nic_info.intr_mode == BE_INTERRUPT_MODE_INTX) {
		num_eq = 1;
		flags = IRQF_SHARED;
	} else {
		num_eq = FUNC1(u32, num_eq, FUNC2());
	}

	if (!num_eq)
		return -EINVAL;

	dev->eq_tbl = FUNC0(num_eq, sizeof(struct ocrdma_eq), GFP_KERNEL);
	if (!dev->eq_tbl)
		return -ENOMEM;

	for (i = 0; i < num_eq; i++) {
		status = FUNC3(dev, &dev->eq_tbl[i],
					OCRDMA_EQ_LEN);
		if (status) {
			status = -EINVAL;
			break;
		}
		FUNC7(dev->eq_tbl[i].irq_name, "ocrdma%d-%d",
			dev->id, i);
		irq = FUNC5(dev, &dev->eq_tbl[i]);
		status = FUNC6(irq, ocrdma_irq_handler, flags,
				     dev->eq_tbl[i].irq_name,
				     &dev->eq_tbl[i]);
		if (status)
			goto done;
		dev->eq_cnt += 1;
	}
	/* one eq is sufficient for data path to work */
	return 0;
done:
	FUNC4(dev);
	return status;
}