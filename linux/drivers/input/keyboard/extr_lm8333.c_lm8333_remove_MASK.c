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
struct lm8333 {int /*<<< orphan*/  input; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lm8333*) ; 
 struct lm8333* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lm8333*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct lm8333 *lm8333 = FUNC1(client);

	FUNC0(client->irq, lm8333);
	FUNC2(lm8333->input);
	FUNC3(lm8333);

	return 0;
}