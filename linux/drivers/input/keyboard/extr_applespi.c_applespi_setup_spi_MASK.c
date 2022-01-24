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
struct applespi_data {int /*<<< orphan*/  drain_complete; int /*<<< orphan*/  cmd_msg_lock; } ;

/* Variables and functions */
 int FUNC0 (struct applespi_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct applespi_data *applespi)
{
	int sts;

	sts = FUNC0(applespi);
	if (sts)
		return sts;

	FUNC2(&applespi->cmd_msg_lock);
	FUNC1(&applespi->drain_complete);

	return 0;
}