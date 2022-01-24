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
struct qedr_dev {int /*<<< orphan*/  enet_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  QEDR_ENET_STATE_BIT ; 
 int /*<<< orphan*/  QEDR_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qedr_dev *dev)
{
	if (!FUNC1(QEDR_ENET_STATE_BIT, &dev->enet_state))
		FUNC0(dev, QEDR_PORT, IB_EVENT_PORT_ACTIVE);
}