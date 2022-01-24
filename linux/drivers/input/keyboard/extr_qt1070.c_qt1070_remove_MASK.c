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
struct qt1070_data {int /*<<< orphan*/  input; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qt1070_data*) ; 
 struct qt1070_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qt1070_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client)
{
	struct qt1070_data *data = FUNC1(client);

	/* Release IRQ */
	FUNC0(client->irq, data);

	FUNC2(data->input);
	FUNC3(data);

	return 0;
}