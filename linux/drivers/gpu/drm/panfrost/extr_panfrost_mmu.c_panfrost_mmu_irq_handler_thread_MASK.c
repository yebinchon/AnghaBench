#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct panfrost_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  MMU_INT_CLEAR ; 
 int /*<<< orphan*/  MMU_INT_MASK ; 
 int /*<<< orphan*/  MMU_INT_RAWSTAT ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct panfrost_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,char*,int,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct panfrost_device*,int) ; 
 int FUNC10 (struct panfrost_device*,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct panfrost_device *pfdev = data;
	u32 status = FUNC7(pfdev, MMU_INT_RAWSTAT);
	int i, ret;

	for (i = 0; status; i++) {
		u32 mask = FUNC3(i) | FUNC3(i + 16);
		u64 addr;
		u32 fault_status;
		u32 exception_type;
		u32 access_type;
		u32 source_id;

		if (!(status & mask))
			continue;

		fault_status = FUNC7(pfdev, FUNC2(i));
		addr = FUNC7(pfdev, FUNC1(i));
		addr |= (u64)FUNC7(pfdev, FUNC0(i)) << 32;

		/* decode the fault status */
		exception_type = fault_status & 0xFF;
		access_type = (fault_status >> 8) & 0x3;
		source_id = (fault_status >> 16);

		/* Page fault only */
		if ((status & mask) == FUNC3(i)) {
			FUNC4(exception_type < 0xC1 || exception_type > 0xC4);

			ret = FUNC10(pfdev, i, addr);
			if (!ret) {
				FUNC8(pfdev, MMU_INT_CLEAR, FUNC3(i));
				status &= ~mask;
				continue;
			}
		}

		/* terminal fault, print info about the fault */
		FUNC6(pfdev->dev,
			"Unhandled Page fault in AS%d at VA 0x%016llX\n"
			"Reason: %s\n"
			"raw fault status: 0x%X\n"
			"decoded fault status: %s\n"
			"exception type 0x%X: %s\n"
			"access type 0x%X: %s\n"
			"source id 0x%X\n",
			i, addr,
			"TODO",
			fault_status,
			(fault_status & (1 << 10) ? "DECODER FAULT" : "SLAVE FAULT"),
			exception_type, FUNC9(pfdev, exception_type),
			access_type, FUNC5(pfdev, fault_status),
			source_id);

		FUNC8(pfdev, MMU_INT_CLEAR, mask);

		status &= ~mask;
	}

	FUNC8(pfdev, MMU_INT_MASK, ~0);
	return IRQ_HANDLED;
}