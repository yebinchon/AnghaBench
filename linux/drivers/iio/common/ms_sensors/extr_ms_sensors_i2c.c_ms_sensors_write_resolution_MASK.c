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
struct ms_ht_dev {int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  MS_SENSORS_CONFIG_REG_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

ssize_t FUNC2(struct ms_ht_dev *dev_data,
				    u8 i)
{
	u8 config_reg;
	int ret;

	ret = FUNC1(dev_data->client, &config_reg);
	if (ret)
		return ret;

	config_reg &= 0x7E;
	config_reg |= ((i & 1) << 7) + ((i & 2) >> 1);

	return FUNC0(dev_data->client,
					 MS_SENSORS_CONFIG_REG_WRITE,
					 config_reg);
}