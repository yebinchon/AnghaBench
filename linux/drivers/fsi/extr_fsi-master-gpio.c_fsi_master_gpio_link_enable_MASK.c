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
struct fsi_master_gpio {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  gpio_enable; int /*<<< orphan*/  external_mode; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fsi_master_gpio* FUNC3 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC4(struct fsi_master *_master, int link)
{
	struct fsi_master_gpio *master = FUNC3(_master);
	int rc = -EBUSY;

	if (link != 0)
		return -ENODEV;

	FUNC1(&master->cmd_lock);
	if (!master->external_mode) {
		FUNC0(master->gpio_enable, 1);
		rc = 0;
	}
	FUNC2(&master->cmd_lock);

	return rc;
}