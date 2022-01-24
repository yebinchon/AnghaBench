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
struct mbox_test_device {void* message; scalar_t__ tx_mmio; scalar_t__ signal; } ;
struct mbox_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBOX_MAX_MSG_LEN ; 
 struct mbox_test_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mbox_client *client, void *message)
{
	struct mbox_test_device *tdev = FUNC0(client->dev);

	if (tdev->tx_mmio) {
		if (tdev->signal)
			FUNC1(tdev->tx_mmio, tdev->message, MBOX_MAX_MSG_LEN);
		else
			FUNC1(tdev->tx_mmio, message, MBOX_MAX_MSG_LEN);
	}
}