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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fsi_master_gpio {int /*<<< orphan*/  cmd_lock; } ;
struct fsi_master {int dummy; } ;
struct fsi_gpio_msg {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct fsi_master_gpio*,struct fsi_gpio_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct fsi_master_gpio*,int /*<<< orphan*/ ,struct fsi_gpio_msg*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master_gpio*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fsi_master_gpio* FUNC5 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC6(struct fsi_master *_master, int link,
		uint8_t id, uint32_t addr, void *val, size_t size)
{
	struct fsi_master_gpio *master = FUNC5(_master);
	struct fsi_gpio_msg cmd;
	int rc;

	if (link != 0)
		return -ENODEV;

	FUNC3(&master->cmd_lock);
	FUNC0(master, &cmd, id, addr, size, NULL);
	rc = FUNC1(master, id, &cmd, size, val);
	FUNC2(master, id, rc == 0, addr);
	FUNC4(&master->cmd_lock);

	return rc;
}