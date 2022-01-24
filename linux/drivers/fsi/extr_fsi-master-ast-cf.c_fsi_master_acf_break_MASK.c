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
struct fsi_master_acf {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; scalar_t__ external_mode; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_BREAK ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct fsi_master_acf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_acf*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fsi_master_acf* FUNC5 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct fsi_master *_master, int link)
{
	struct fsi_master_acf *master = FUNC5(_master);
	int rc;

	if (link != 0)
		return -ENODEV;

	FUNC3(&master->lock);
	if (master->external_mode) {
		FUNC4(&master->lock);
		return -EBUSY;
	}
	FUNC0(master->dev, "sending BREAK\n");
	rc = FUNC1(master, CMD_BREAK);
	FUNC2(master, 0, false, 0);
	FUNC4(&master->lock);

	/* Wait for logic reset to take effect */
	FUNC6(200);

	return rc;
}