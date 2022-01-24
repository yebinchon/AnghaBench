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
struct as5011_device {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  i2c_client; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  AS5011_X_RES_INT ; 
 int /*<<< orphan*/  AS5011_Y_RES_INT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct as5011_device *as5011 = dev_id;
	int error;
	signed char x, y;

	error = FUNC0(as5011->i2c_client, AS5011_X_RES_INT, &x);
	if (error < 0)
		goto out;

	error = FUNC0(as5011->i2c_client, AS5011_Y_RES_INT, &y);
	if (error < 0)
		goto out;

	FUNC1(as5011->input_dev, ABS_X, x);
	FUNC1(as5011->input_dev, ABS_Y, y);
	FUNC2(as5011->input_dev);

out:
	return IRQ_HANDLED;
}