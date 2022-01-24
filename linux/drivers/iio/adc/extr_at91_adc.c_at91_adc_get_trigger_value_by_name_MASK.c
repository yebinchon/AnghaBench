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
struct iio_dev {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct at91_adc_trigger {scalar_t__ value; int /*<<< orphan*/  name; } ;
struct at91_adc_state {int trigger_number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct at91_adc_state* FUNC0 (struct iio_dev*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct iio_dev *idev,
					     struct at91_adc_trigger *triggers,
					     const char *trigger_name)
{
	struct at91_adc_state *st = FUNC0(idev);
	int i;

	for (i = 0; i < st->trigger_number; i++) {
		char *name = FUNC1(GFP_KERNEL,
				"%s-dev%d-%s",
				idev->name,
				idev->id,
				triggers[i].name);
		if (!name)
			return -ENOMEM;

		if (FUNC3(trigger_name, name) == 0) {
			FUNC2(name);
			if (triggers[i].value == 0)
				return -EINVAL;
			return triggers[i].value;
		}

		FUNC2(name);
	}

	return -EINVAL;
}