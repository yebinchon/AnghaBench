#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  vector; int /*<<< orphan*/  affinity_hint_mask; int /*<<< orphan*/  cpu; struct efa_dev* data; int /*<<< orphan*/  handler; } ;
struct efa_dev {TYPE_3__ admin_irq; TYPE_1__* pdev; int /*<<< orphan*/  admin_msix_vector_idx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_IRQNAME_SIZE ; 
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  efa_intr_msix_mgmnt ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC6(struct efa_dev *dev)
{
	u32 cpu;

	FUNC5(dev->admin_irq.name, EFA_IRQNAME_SIZE,
		 "efa-mgmnt@pci:%s", FUNC4(dev->pdev));
	dev->admin_irq.handler = efa_intr_msix_mgmnt;
	dev->admin_irq.data = dev;
	dev->admin_irq.vector =
		FUNC3(dev->pdev, dev->admin_msix_vector_idx);
	cpu = FUNC0(cpu_online_mask);
	dev->admin_irq.cpu = cpu;
	FUNC1(cpu,
			&dev->admin_irq.affinity_hint_mask);
	FUNC2(&dev->pdev->dev, "Setup irq:0x%p vector:%d name:%s\n",
		 &dev->admin_irq,
		 dev->admin_irq.vector,
		 dev->admin_irq.name);
}