#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  OF_POPULATED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct i2c_client *client)
{
	if (FUNC1(client))
		return;

	if (client->dev.of_node) {
		FUNC4(client->dev.of_node, OF_POPULATED);
		FUNC5(client->dev.of_node);
	}

	if (FUNC0(&client->dev))
		FUNC2(FUNC0(&client->dev));
	FUNC3(&client->dev);
}