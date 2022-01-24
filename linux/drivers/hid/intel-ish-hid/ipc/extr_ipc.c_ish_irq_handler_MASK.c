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
typedef  int /*<<< orphan*/  uint32_t ;
struct ishtp_device {scalar_t__ dev_state; int /*<<< orphan*/  ipc_rx_bytes_cnt; int /*<<< orphan*/  ipc_rx_cnt; int /*<<< orphan*/  devc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ IPC_PAYLOAD_SIZE ; 
#define  IPC_PROTOCOL_ISHTP 129 
#define  IPC_PROTOCOL_MNG 128 
 int /*<<< orphan*/  IPC_REG_ISH2HOST_DRBL ; 
 int /*<<< orphan*/  IPC_REG_ISH_HOST_FWSTS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISHTP_DEV_DISABLED ; 
 int FUNC3 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ishtp_device*,int /*<<< orphan*/ ) ; 

irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct ishtp_device	*dev = dev_id;
	uint32_t	doorbell_val;
	bool	interrupt_generated;

	/* Check that it's interrupt from ISH (may be shared) */
	interrupt_generated = FUNC3(dev);

	if (!interrupt_generated)
		return IRQ_NONE;

	doorbell_val = FUNC5(dev, IPC_REG_ISH2HOST_DRBL);
	if (!FUNC2(doorbell_val))
		return IRQ_HANDLED;

	if (dev->dev_state == ISHTP_DEV_DISABLED)
		return	IRQ_HANDLED;

	/* Sanity check: IPC dgram length in header */
	if (FUNC0(doorbell_val) > IPC_PAYLOAD_SIZE) {
		FUNC4(dev->devc,
			"IPC hdr - bad length: %u; dropped\n",
			(unsigned int)FUNC0(doorbell_val));
		goto	eoi;
	}

	switch (FUNC1(doorbell_val)) {
	default:
		break;
	case IPC_PROTOCOL_MNG:
		FUNC8(dev, doorbell_val);
		break;
	case IPC_PROTOCOL_ISHTP:
		FUNC7(dev);
		break;
	}

eoi:
	/* Update IPC counters */
	++dev->ipc_rx_cnt;
	dev->ipc_rx_bytes_cnt += FUNC0(doorbell_val);

	FUNC6(dev, IPC_REG_ISH2HOST_DRBL, 0);
	/* Flush write to doorbell */
	FUNC5(dev, IPC_REG_ISH_HOST_FWSTS);

	return	IRQ_HANDLED;
}