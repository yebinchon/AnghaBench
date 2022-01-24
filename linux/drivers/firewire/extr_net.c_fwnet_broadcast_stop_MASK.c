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
struct fwnet_device {scalar_t__ broadcast_state; int /*<<< orphan*/  broadcast_rcv_context; } ;

/* Variables and functions */
 scalar_t__ FWNET_BROADCAST_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct fwnet_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct fwnet_device *dev)
{
	if (dev->broadcast_state == FWNET_BROADCAST_ERROR)
		return;
	FUNC1(dev->broadcast_rcv_context);
	FUNC0(dev);
}