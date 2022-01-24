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
struct msi_msg {int /*<<< orphan*/  data; int /*<<< orphan*/  address_hi; int /*<<< orphan*/  address_lo; } ;
struct TYPE_2__ {size_t msi_index; } ;
struct msi_desc {TYPE_1__ platform; } ;
struct flexrm_ring {scalar_t__ regs; } ;
struct flexrm_mbox {struct flexrm_ring* rings; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ RING_MSI_ADDR_LS ; 
 scalar_t__ RING_MSI_ADDR_MS ; 
 scalar_t__ RING_MSI_DATA_VALUE ; 
 struct flexrm_mbox* FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct msi_desc *desc, struct msi_msg *msg)
{
	struct device *dev = FUNC1(desc);
	struct flexrm_mbox *mbox = FUNC0(dev);
	struct flexrm_ring *ring = &mbox->rings[desc->platform.msi_index];

	/* Configure per-Ring MSI registers */
	FUNC2(msg->address_lo, ring->regs + RING_MSI_ADDR_LS);
	FUNC2(msg->address_hi, ring->regs + RING_MSI_ADDR_MS);
	FUNC2(msg->data, ring->regs + RING_MSI_DATA_VALUE);
}