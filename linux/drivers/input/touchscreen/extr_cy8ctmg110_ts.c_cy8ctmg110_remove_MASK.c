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
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct cy8ctmg110 {scalar_t__ reset_pin; scalar_t__ irq_pin; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cy8ctmg110*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cy8ctmg110*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cy8ctmg110*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct cy8ctmg110* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cy8ctmg110*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct cy8ctmg110 *ts = FUNC4(client);

	FUNC1(ts, true);
	FUNC0(ts, false);

	FUNC2(client->irq, ts);
	FUNC5(ts->input);
	FUNC3(ts->irq_pin);
	if (ts->reset_pin)
		FUNC3(ts->reset_pin);
	FUNC6(ts);

	return 0;
}