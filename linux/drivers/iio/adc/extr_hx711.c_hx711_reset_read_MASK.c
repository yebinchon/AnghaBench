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
struct hx711_data {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hx711_data*) ; 
 scalar_t__ FUNC2 (struct hx711_data*) ; 
 int FUNC3 (struct hx711_data*,int) ; 

__attribute__((used)) static int FUNC4(struct hx711_data *hx711_data, int chan)
{
	int ret;
	int val;

	/*
	 * hx711_reset() must be called from here
	 * because it could be calling hx711_read() by itself
	 */
	if (FUNC2(hx711_data)) {
		FUNC0(hx711_data->dev, "reset failed!");
		return -EIO;
	}

	ret = FUNC3(hx711_data, chan);
	if (ret < 0)
		return ret;

	val = FUNC1(hx711_data);

	return val;
}