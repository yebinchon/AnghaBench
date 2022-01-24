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
struct us5182d_data {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  US5182D_CFG0_SHUTDOWN_EN ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct us5182d_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct us5182d_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct us5182d_data *data = FUNC2(FUNC0(client));

	FUNC1(FUNC0(client));

	FUNC3(&client->dev);
	FUNC4(&client->dev);

	return FUNC5(data, US5182D_CFG0_SHUTDOWN_EN);
}