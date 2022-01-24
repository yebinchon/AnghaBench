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
struct qt2160_data {int /*<<< orphan*/  input; int /*<<< orphan*/  dwork; } ;
struct i2c_client {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct qt2160_data*) ; 
 struct qt2160_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qt2160_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct qt2160_data*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct qt2160_data *qt2160 = FUNC2(client);

	FUNC5(qt2160);

	/* Release IRQ so no queue will be scheduled */
	if (client->irq)
		FUNC1(client->irq, qt2160);

	FUNC0(&qt2160->dwork);

	FUNC3(qt2160->input);
	FUNC4(qt2160);

	return 0;
}