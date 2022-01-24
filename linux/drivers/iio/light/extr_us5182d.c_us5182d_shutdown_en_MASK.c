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
struct us5182d_data {scalar_t__ power_mode; int als_enabled; int px_enabled; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int US5182D_CFG0_SHUTDOWN_EN ; 
 scalar_t__ US5182D_ONESHOT ; 
 int /*<<< orphan*/  US5182D_REG_CFG0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct us5182d_data *data, u8 state)
{
	int ret;

	if (data->power_mode == US5182D_ONESHOT)
		return 0;

	ret = FUNC0(data->client, US5182D_REG_CFG0);
	if (ret < 0)
		return ret;

	ret = ret & ~US5182D_CFG0_SHUTDOWN_EN;
	ret = ret | state;

	ret = FUNC1(data->client, US5182D_REG_CFG0, ret);
	if (ret < 0)
		return ret;

	if (state & US5182D_CFG0_SHUTDOWN_EN) {
		data->als_enabled = false;
		data->px_enabled = false;
	}

	return ret;
}