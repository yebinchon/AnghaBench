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
struct sht15_data {scalar_t__ val_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHT15_SOFT_RESET ; 
 int /*<<< orphan*/  SHT15_TSRST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sht15_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sht15_data *data)
{
	int ret;

	ret = FUNC1(data, SHT15_SOFT_RESET);
	if (ret)
		return ret;
	FUNC0(SHT15_TSRST);
	/* device resets default hardware status register value */
	data->val_status = 0;

	return ret;
}