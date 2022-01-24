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
struct ucb1400_ts {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct ucb1400_ts* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucb1400_ts*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *idev)
{
	struct ucb1400_ts *ucb = FUNC0(idev);

	FUNC1(ucb);

	return 0;
}