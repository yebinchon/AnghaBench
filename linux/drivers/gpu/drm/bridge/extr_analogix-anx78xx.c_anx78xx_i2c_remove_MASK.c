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
struct i2c_client {int dummy; } ;
struct anx78xx {int /*<<< orphan*/  edid; int /*<<< orphan*/  bridge; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct anx78xx* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct anx78xx*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct anx78xx *anx78xx = FUNC1(client);

	FUNC0(&anx78xx->bridge);

	FUNC3(anx78xx);

	FUNC2(anx78xx->edid);

	return 0;
}