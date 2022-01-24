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
typedef  int uint32_t ;
struct ishtp_device {int /*<<< orphan*/  devc; int /*<<< orphan*/  wr_processing_spinlock; int /*<<< orphan*/  wr_free_list; int /*<<< orphan*/  wr_processing_list; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPIPE ; 
 int /*<<< orphan*/  IPC_REG_ISH2HOST_MSG ; 
 int /*<<< orphan*/  MNG_RESET_NOTIFY_ACK ; 
 int /*<<< orphan*/  TIMEOUT_FOR_FW_RDY_MS ; 
 int /*<<< orphan*/  TIMEOUT_FOR_INPUT_RDY_MS ; 
 int /*<<< orphan*/  TIME_SLICE_FOR_FW_RDY_MS ; 
 int /*<<< orphan*/  TIME_SLICE_FOR_INPUT_RDY_MS ; 
 int /*<<< orphan*/  WAIT_FOR_FW_RDY ; 
 int /*<<< orphan*/  WAIT_FOR_INPUT_RDY ; 
 int FUNC0 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ishtp_device*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ishtp_device*) ; 
 int FUNC4 (struct ishtp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ishtp_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct ishtp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ishtp_device *dev)
{
	uint32_t	reset_id;
	unsigned long	flags;

	/* Read reset ID */
	reset_id = FUNC4(dev, IPC_REG_ISH2HOST_MSG) & 0xFFFF;

	/* Clear IPC output queue */
	FUNC9(&dev->wr_processing_spinlock, flags);
	FUNC8(&dev->wr_processing_list, &dev->wr_free_list);
	FUNC10(&dev->wr_processing_spinlock, flags);

	/* ISHTP notification in IPC_RESET */
	FUNC7(dev);

	if (!FUNC3(dev))
		FUNC11(dev, WAIT_FOR_INPUT_RDY,
			TIME_SLICE_FOR_INPUT_RDY_MS, TIMEOUT_FOR_INPUT_RDY_MS);

	/* ISH FW is dead */
	if (!FUNC3(dev))
		return	-EPIPE;
	/*
	 * Set HOST2ISH.ILUP. Apparently we need this BEFORE sending
	 * RESET_NOTIFY_ACK - FW will be checking for it
	 */
	FUNC5(dev);
	/* Send RESET_NOTIFY_ACK (with reset_id) */
	FUNC2(dev, MNG_RESET_NOTIFY_ACK, &reset_id,
			 sizeof(uint32_t));

	/* Wait for ISH FW'es ILUP and ISHTP_READY */
	FUNC11(dev, WAIT_FOR_FW_RDY,
			TIME_SLICE_FOR_FW_RDY_MS, TIMEOUT_FOR_FW_RDY_MS);
	if (!FUNC6(dev)) {
		/* ISH FW is dead */
		uint32_t	ish_status;

		ish_status = FUNC0(dev);
		FUNC1(dev->devc,
			"[ishtp-ish]: completed reset, ISH is dead (FWSTS = %08X)\n",
			ish_status);
		return -ENODEV;
	}
	return	0;
}