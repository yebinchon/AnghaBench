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
struct uhid_device {int running; int /*<<< orphan*/  rd_data; int /*<<< orphan*/  hid; int /*<<< orphan*/  worker; int /*<<< orphan*/  report_wait; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct uhid_device *uhid)
{
	if (!uhid->running)
		return -EINVAL;

	uhid->running = false;
	FUNC3(&uhid->report_wait);

	FUNC0(&uhid->worker);

	FUNC1(uhid->hid);
	FUNC2(uhid->rd_data);

	return 0;
}