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
typedef  int u8 ;
struct ms_ht_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int) ; 

ssize_t FUNC4(struct ms_ht_dev *dev_data,
			       char *buf)
{
	u8 config_reg;
	int ret;

	FUNC1(&dev_data->lock);
	ret = FUNC0(dev_data->client, &config_reg);
	FUNC2(&dev_data->lock);
	if (ret)
		return ret;

	return FUNC3(buf, "%d\n", (config_reg & 0x4) >> 2);
}