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
struct lgdt330x_state {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct lgdt330x_state* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct lgdt330x_state*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct lgdt330x_state *state = FUNC1(client);

	FUNC0(&client->dev, "\n");

	FUNC2(state);

	return 0;
}