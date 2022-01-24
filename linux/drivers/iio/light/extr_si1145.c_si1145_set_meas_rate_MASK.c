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
struct si1145_data {int /*<<< orphan*/  client; TYPE_1__* part_info; } ;
struct TYPE_2__ {scalar_t__ uncompressed_meas_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  SI1145_REG_MEAS_RATE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct si1145_data *data, int interval)
{
	if (data->part_info->uncompressed_meas_rate)
		return FUNC1(data->client,
			SI1145_REG_MEAS_RATE, interval);
	else
		return FUNC0(data->client,
			SI1145_REG_MEAS_RATE, interval);
}