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
struct input_dev {int dummy; } ;
struct ff_effect {int dummy; } ;
struct drv2665_data {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 struct drv2665_data* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct input_dev *input, void *data,
				struct ff_effect *effect)
{
	struct drv2665_data *haptics = FUNC0(input);

	FUNC1(&haptics->work);

	return 0;
}