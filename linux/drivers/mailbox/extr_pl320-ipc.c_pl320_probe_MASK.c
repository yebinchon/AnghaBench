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
struct amba_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;
struct amba_device {int /*<<< orphan*/  dev; int /*<<< orphan*/ * irq; TYPE_1__ res; } ;

/* Variables and functions */
 int /*<<< orphan*/  A9_SOURCE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_RX_MBOX ; 
 int /*<<< orphan*/  IPC_TX_MBOX ; 
 int /*<<< orphan*/  M3_SOURCE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ipc_base ; 
 int /*<<< orphan*/  ipc_handler ; 
 int /*<<< orphan*/  ipc_irq ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct amba_device *adev, const struct amba_id *id)
{
	int ret;

	ipc_base = FUNC6(adev->res.start, FUNC9(&adev->res));
	if (ipc_base == NULL)
		return -ENOMEM;

	FUNC10(0, ipc_base + FUNC3(IPC_TX_MBOX));

	ipc_irq = adev->irq[0];
	ret = FUNC8(ipc_irq, ipc_handler, 0, FUNC5(&adev->dev), NULL);
	if (ret < 0)
		goto err;

	/* Init slow mailbox */
	FUNC10(FUNC0(A9_SOURCE),
		       ipc_base + FUNC4(IPC_TX_MBOX));
	FUNC10(FUNC0(M3_SOURCE),
		       ipc_base + FUNC1(IPC_TX_MBOX));
	FUNC10(FUNC0(M3_SOURCE) | FUNC0(A9_SOURCE),
		       ipc_base + FUNC2(IPC_TX_MBOX));

	/* Init receive mailbox */
	FUNC10(FUNC0(M3_SOURCE),
		       ipc_base + FUNC4(IPC_RX_MBOX));
	FUNC10(FUNC0(A9_SOURCE),
		       ipc_base + FUNC1(IPC_RX_MBOX));
	FUNC10(FUNC0(M3_SOURCE) | FUNC0(A9_SOURCE),
		       ipc_base + FUNC2(IPC_RX_MBOX));

	return 0;
err:
	FUNC7(ipc_base);
	return ret;
}