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
struct ps8622_bridge {int /*<<< orphan*/  bridge; int /*<<< orphan*/  bl; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ps8622_bridge* FUNC2 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct ps8622_bridge *ps8622 = FUNC2(client);

	FUNC0(ps8622->bl);
	FUNC1(&ps8622->bridge);

	return 0;
}