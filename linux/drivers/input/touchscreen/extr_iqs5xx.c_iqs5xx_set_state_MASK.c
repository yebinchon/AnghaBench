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
typedef  int /*<<< orphan*/  u8 ;
struct iqs5xx_private {scalar_t__ bl_status; int /*<<< orphan*/  lock; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ IQS5XX_BL_STATUS_RESET ; 
 int /*<<< orphan*/  IQS5XX_END_COMM ; 
 int /*<<< orphan*/  IQS5XX_SYS_CTRL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct iqs5xx_private* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client, u8 state)
{
	struct iqs5xx_private *iqs5xx = FUNC2(client);
	int error1, error2;

	if (iqs5xx->bl_status == IQS5XX_BL_STATUS_RESET)
		return 0;

	FUNC4(&iqs5xx->lock);

	/*
	 * Addressing the device outside of a communication window prompts it
	 * to assert the RDY output, so disable the interrupt line to prevent
	 * the handler from servicing a false interrupt.
	 */
	FUNC0(client->irq);

	error1 = FUNC3(client, IQS5XX_SYS_CTRL1, state);
	error2 = FUNC3(client, IQS5XX_END_COMM, 0);

	FUNC6(50, 100);
	FUNC1(client->irq);

	FUNC5(&iqs5xx->lock);

	if (error1)
		return error1;

	return error2;
}