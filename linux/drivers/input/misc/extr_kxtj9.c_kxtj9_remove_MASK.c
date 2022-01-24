#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* exit ) () ;} ;
struct kxtj9_data {TYPE_2__ pdata; int /*<<< orphan*/  input_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {scalar_t__ irq; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct kxtj9_data*) ; 
 struct kxtj9_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kxtj9_data*) ; 
 int /*<<< orphan*/  kxtj9_attribute_group ; 
 int /*<<< orphan*/  FUNC4 (struct kxtj9_data*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct kxtj9_data *tj9 = FUNC1(client);

	if (client->irq) {
		FUNC6(&client->dev.kobj, &kxtj9_attribute_group);
		FUNC0(client->irq, tj9);
		FUNC2(tj9->input_dev);
	} else {
		FUNC4(tj9);
	}

	if (tj9->pdata.exit)
		tj9->pdata.exit();

	FUNC3(tj9);

	return 0;
}