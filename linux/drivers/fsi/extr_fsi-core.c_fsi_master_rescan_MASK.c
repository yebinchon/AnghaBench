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
struct fsi_master {int /*<<< orphan*/  scan_lock; } ;

/* Variables and functions */
 int FUNC0 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct fsi_master *master)
{
	int rc;

	FUNC2(&master->scan_lock);
	FUNC1(master);
	rc = FUNC0(master);
	FUNC3(&master->scan_lock);

	return rc;
}