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
struct lm63_data {int lut_size; scalar_t__* pwm1; scalar_t__* temp8; int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lm63_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct lm63_data *data)
{
	int i;

	FUNC2(&data->update_lock);
	FUNC1(data);

	for (i = 1; i < data->lut_size; i++) {
		if (data->pwm1[1 + i - 1] > data->pwm1[1 + i]
		 || data->temp8[3 + i - 1] > data->temp8[3 + i]) {
			FUNC0(dev,
				 "Lookup table doesn't look sane (check entries %d and %d)\n",
				 i, i + 1);
			break;
		}
	}
	FUNC3(&data->update_lock);

	return i == data->lut_size ? 0 : 1;
}