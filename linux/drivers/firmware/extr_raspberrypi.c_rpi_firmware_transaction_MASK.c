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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct rpi_firmware {TYPE_1__ cl; int /*<<< orphan*/  c; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transaction_lock ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct rpi_firmware *fw, u32 chan, u32 data)
{
	u32 message = FUNC0(chan, data);
	int ret;

	FUNC1(data & 0xf);

	FUNC5(&transaction_lock);
	FUNC7(&fw->c);
	ret = FUNC4(fw->chan, &message);
	if (ret >= 0) {
		if (FUNC8(&fw->c, HZ)) {
			ret = 0;
		} else {
			ret = -ETIMEDOUT;
			FUNC2(1, "Firmware transaction timeout");
		}
	} else {
		FUNC3(fw->cl.dev, "mbox_send_message returned %d\n", ret);
	}
	FUNC6(&transaction_lock);

	return ret;
}