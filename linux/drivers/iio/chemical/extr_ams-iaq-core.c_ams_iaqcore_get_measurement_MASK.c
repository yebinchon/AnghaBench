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
struct ams_iaqcore_data {scalar_t__ last_update; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int FUNC0 (struct ams_iaqcore_data*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct ams_iaqcore_data *data)
{
	int ret;

	/* sensor can only be polled once a second max per datasheet */
	if (!FUNC1(jiffies, data->last_update + HZ))
		return 0;

	ret = FUNC0(data);
	if (ret < 0)
		return ret;

	data->last_update = jiffies;

	return 0;
}