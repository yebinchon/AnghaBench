#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct input_dev {int dummy; } ;
struct gp2a_data {TYPE_1__* i2c_client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct gp2a_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct gp2a_data*) ; 
 struct gp2a_data* FUNC3 (struct input_dev*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct gp2a_data *dt = FUNC3(dev);
	int error;

	error = FUNC1(dt);
	if (error < 0) {
		FUNC0(&dt->i2c_client->dev,
			"unable to activate, err %d\n", error);
		return error;
	}

	FUNC2(dt);

	return 0;
}