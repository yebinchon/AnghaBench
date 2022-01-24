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
struct vibra_info {scalar_t__ enabled; int /*<<< orphan*/  play_work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vibra_info* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct vibra_info*,int) ; 

__attribute__((used)) static void FUNC3(struct input_dev *input)
{
	struct vibra_info *info = FUNC1(input);

	FUNC0(&info->play_work);
	if (info->enabled)
		FUNC2(info, false);
}