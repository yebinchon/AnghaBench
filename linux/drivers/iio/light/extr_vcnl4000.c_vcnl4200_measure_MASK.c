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
struct vcnl4200_channel {int /*<<< orphan*/  reg; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_measurement; int /*<<< orphan*/  sampling_rate; } ;
struct vcnl4000_data {int /*<<< orphan*/  client; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct vcnl4000_data *data,
		struct vcnl4200_channel *chan, int *val)
{
	int ret;
	s64 delta;
	ktime_t next_measurement;

	FUNC4(&chan->lock);

	next_measurement = FUNC1(chan->last_measurement,
			chan->sampling_rate);
	delta = FUNC3(next_measurement, FUNC2());
	if (delta > 0)
		FUNC6(delta, delta + 500);
	chan->last_measurement = FUNC2();

	FUNC5(&chan->lock);

	ret = FUNC0(data->client, chan->reg);
	if (ret < 0)
		return ret;

	*val = ret;

	return 0;
}