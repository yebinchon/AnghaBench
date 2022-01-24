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
struct ti_sn_bridge {int /*<<< orphan*/  bridge; scalar_t__ dsi; int /*<<< orphan*/  dev; int /*<<< orphan*/  host_node; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ti_sn_bridge* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_sn_bridge*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct ti_sn_bridge *pdata = FUNC1(client);

	if (!pdata)
		return -EINVAL;

	FUNC6(pdata);

	FUNC4(pdata->host_node);

	FUNC5(pdata->dev);

	if (pdata->dsi) {
		FUNC2(pdata->dsi);
		FUNC3(pdata->dsi);
	}

	FUNC0(&pdata->bridge);

	return 0;
}