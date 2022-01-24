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
struct i2c_client {scalar_t__ irq; int /*<<< orphan*/  dev; } ;
struct bma150_data {int /*<<< orphan*/  input_polled; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct bma150_data*) ; 
 struct bma150_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bma150_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct bma150_data *bma150 = FUNC1(client);

	FUNC6(&client->dev);

	if (client->irq > 0) {
		FUNC0(client->irq, bma150);
		FUNC3(bma150->input);
	} else {
		FUNC4(bma150->input_polled);
		FUNC2(bma150->input_polled);
	}

	FUNC5(bma150);

	return 0;
}