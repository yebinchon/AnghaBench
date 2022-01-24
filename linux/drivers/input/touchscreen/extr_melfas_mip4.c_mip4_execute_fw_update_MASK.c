#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mip4_ts {TYPE_2__* client; TYPE_1__* input; } ;
struct mip4_bin_tail {int dummy; } ;
struct firmware {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mip4_ts*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mip4_ts*,struct firmware const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct mip4_bin_tail const**) ; 
 int /*<<< orphan*/  FUNC5 (struct mip4_ts*) ; 
 int FUNC6 (struct mip4_ts*) ; 

__attribute__((used)) static int FUNC7(struct mip4_ts *ts, const struct firmware *fw)
{
	const struct mip4_bin_tail *fw_info;
	u32 fw_start_offset;
	u32 fw_size;
	int retires = 3;
	int error;

	error = FUNC4(ts, fw,
				    &fw_start_offset, &fw_size, &fw_info);
	if (error)
		return error;

	if (ts->input->users) {
		FUNC1(ts->client->irq);
	} else {
		error = FUNC6(ts);
		if (error)
			return error;
	}

	/* Update firmware */
	do {
		error = FUNC3(ts, fw->data, fw_size, fw_start_offset);
		if (!error)
			break;
	} while (--retires);

	if (error)
		FUNC0(&ts->client->dev,
			"Failed to flash firmware: %d\n", error);

	/* Enable IRQ */
	if (ts->input->users)
		FUNC2(ts->client->irq);
	else
		FUNC5(ts);

	return error ? error : 0;
}