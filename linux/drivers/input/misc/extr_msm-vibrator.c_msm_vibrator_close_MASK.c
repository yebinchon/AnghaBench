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
struct msm_vibrator {int /*<<< orphan*/  worker; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msm_vibrator* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_vibrator*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input)
{
	struct msm_vibrator *vibrator = FUNC1(input);

	FUNC0(&vibrator->worker);
	FUNC2(vibrator);
}