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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC_RX_MBOX ; 
 int /*<<< orphan*/  IPC_TX_MBOX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ ipc_base ; 
 int /*<<< orphan*/  ipc_completion ; 
 int /*<<< orphan*/  ipc_notifier ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev)
{
	u32 irq_stat;
	u32 data[7];

	irq_stat = FUNC6(ipc_base + FUNC0(1));
	if (irq_stat & FUNC2(IPC_TX_MBOX)) {
		FUNC7(0, ipc_base + FUNC1(IPC_TX_MBOX));
		FUNC5(&ipc_completion);
	}
	if (irq_stat & FUNC2(IPC_RX_MBOX)) {
		FUNC3(IPC_RX_MBOX, data);
		FUNC4(&ipc_notifier, data[0], data + 1);
		FUNC7(2, ipc_base + FUNC1(IPC_RX_MBOX));
	}

	return IRQ_HANDLED;
}