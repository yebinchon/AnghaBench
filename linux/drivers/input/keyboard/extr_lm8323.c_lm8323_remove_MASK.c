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
struct lm8323_chip {TYPE_1__* pwm; TYPE_2__* client; int /*<<< orphan*/  idev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdev; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_disable_kp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lm8323_chip*) ; 
 struct lm8323_chip* FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lm8323_chip*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct lm8323_chip *lm = FUNC3(client);
	int i;

	FUNC1(client->irq);
	FUNC2(client->irq, lm);

	FUNC4(lm->idev);

	FUNC0(&lm->client->dev, &dev_attr_disable_kp);

	for (i = 0; i < 3; i++)
		if (lm->pwm[i].enabled)
			FUNC6(&lm->pwm[i].cdev);

	FUNC5(lm);

	return 0;
}