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
struct as5011_device {int /*<<< orphan*/  input_dev; int /*<<< orphan*/  button_gpio; int /*<<< orphan*/  button_irq; int /*<<< orphan*/  axis_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct as5011_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct as5011_device* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct as5011_device*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct as5011_device *as5011 = FUNC2(client);

	FUNC0(as5011->axis_irq, as5011);
	FUNC0(as5011->button_irq, as5011);
	FUNC1(as5011->button_gpio);

	FUNC3(as5011->input_dev);
	FUNC4(as5011);

	return 0;
}