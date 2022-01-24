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
struct mbox_test_device {void* rx_buffer; int /*<<< orphan*/  async_queue; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; scalar_t__ rx_mmio; } ;
struct mbox_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int /*<<< orphan*/  MBOX_MAX_MSG_LEN ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 struct mbox_test_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mbox_data_ready ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct mbox_client *client, void *message)
{
	struct mbox_test_device *tdev = FUNC0(client->dev);
	unsigned long flags;

	FUNC5(&tdev->lock, flags);
	if (tdev->rx_mmio) {
		FUNC3(tdev->rx_buffer, tdev->rx_mmio, MBOX_MAX_MSG_LEN);
		FUNC4("Client: Received [MMIO]: ", DUMP_PREFIX_ADDRESS,
				     tdev->rx_buffer, MBOX_MAX_MSG_LEN);
	} else if (message) {
		FUNC4("Client: Received [API]: ", DUMP_PREFIX_ADDRESS,
				     message, MBOX_MAX_MSG_LEN);
		FUNC2(tdev->rx_buffer, message, MBOX_MAX_MSG_LEN);
	}
	mbox_data_ready = true;
	FUNC6(&tdev->lock, flags);

	FUNC7(&tdev->waitq);

	FUNC1(&tdev->async_queue, SIGIO, POLL_IN);
}