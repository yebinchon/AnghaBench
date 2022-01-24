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
struct fsi_master_gpio {int /*<<< orphan*/  cmd_lock; scalar_t__ external_mode; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FSI_BREAK_CLOCKS ; 
 int /*<<< orphan*/  FSI_POST_BREAK_CLOCKS ; 
 int /*<<< orphan*/  FSI_PRE_BREAK_CLOCKS ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_master_gpio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fsi_master_gpio*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fsi_master_gpio*,int) ; 
 struct fsi_master_gpio* FUNC9 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_master_gpio*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct fsi_master *_master, int link)
{
	struct fsi_master_gpio *master = FUNC9(_master);
	unsigned long flags;

	if (link != 0)
		return -ENODEV;

	FUNC10(master);

	FUNC5(&master->cmd_lock);
	if (master->external_mode) {
		FUNC6(&master->cmd_lock);
		return -EBUSY;
	}

	FUNC4(flags);

	FUNC8(master, 1);
	FUNC7(master, 1);
	FUNC0(master, FSI_PRE_BREAK_CLOCKS);
	FUNC7(master, 0);
	FUNC0(master, FSI_BREAK_CLOCKS);
	FUNC1(master);
	FUNC7(master, 1);
	FUNC0(master, FSI_POST_BREAK_CLOCKS);

	FUNC3(flags);

	FUNC2(master, 0, false, 0);
	FUNC6(&master->cmd_lock);

	/* Wait for logic reset to take effect */
	FUNC11(200);

	return 0;
}