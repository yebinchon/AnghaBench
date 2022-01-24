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
struct TYPE_2__ {scalar_t__ tx_block; } ;
struct slimpro_i2c_dev {int* resp_msg; int /*<<< orphan*/  rd_complete; TYPE_1__ mbox_client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MAILBOX_OP_TIMEOUT ; 
 int /*<<< orphan*/  acpi_disabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct slimpro_i2c_dev *ctx)
{
	if (ctx->mbox_client.tx_block || !acpi_disabled) {
		if (!FUNC1(&ctx->rd_complete,
						 FUNC0(MAILBOX_OP_TIMEOUT)))
			return -ETIMEDOUT;
	}

	/* Check of invalid data or no device */
	if (*ctx->resp_msg == 0xffffffff)
		return -ENODEV;

	return 0;
}