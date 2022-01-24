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
struct kp_data {int /*<<< orphan*/  idev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kp_data*) ; 
 struct kp_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kp_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct kp_data *lp = FUNC1(client);

	FUNC0(client->irq, lp);

	FUNC2(lp->idev);
	FUNC3(lp);

	return 0;
}