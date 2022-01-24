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
struct t5403_data {int mode; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  T5403_COMMAND ; 
 int /*<<< orphan*/  T5403_DATA ; 
 int T5403_MODE_SHIFT ; 
 int T5403_PT ; 
 int T5403_SCO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* t5403_pressure_conv_ms ; 

__attribute__((used)) static int FUNC3(struct t5403_data *data, bool pressure)
{
	int wait_time = 3;  /* wakeup time in ms */

	int ret = FUNC1(data->client, T5403_COMMAND,
		(pressure ? (data->mode << T5403_MODE_SHIFT) : T5403_PT) |
		T5403_SCO);
	if (ret < 0)
		return ret;

	wait_time += pressure ? t5403_pressure_conv_ms[data->mode] : 2;

	FUNC2(wait_time);

	return FUNC0(data->client, T5403_DATA);
}