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
struct hideep_ts {TYPE_1__* client; int /*<<< orphan*/  xfer_buf; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HIDEEP_EVENT_ADDR ; 
 int HIDEEP_MAX_EVENT ; 
 int HIDEEP_XFER_BUF_SIZE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hideep_ts*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *handle)
{
	struct hideep_ts *ts = handle;
	int error;

	FUNC0(HIDEEP_MAX_EVENT > HIDEEP_XFER_BUF_SIZE);

	error = FUNC3(ts->reg, HIDEEP_EVENT_ADDR,
				 ts->xfer_buf, HIDEEP_MAX_EVENT / 2);
	if (error) {
		FUNC1(&ts->client->dev, "failed to read events: %d\n", error);
		goto out;
	}

	FUNC2(ts);

out:
	return IRQ_HANDLED;
}