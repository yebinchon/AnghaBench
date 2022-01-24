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
typedef  void* u8 ;
struct fsi_master_gpio {int /*<<< orphan*/  cmd_lock; void* t_echo_delay; void* t_send_delay; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fsi_master_gpio* FUNC2 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC3(struct fsi_master *_master, int link,
				       u8 t_send_delay, u8 t_echo_delay)
{
	struct fsi_master_gpio *master = FUNC2(_master);

	if (link != 0)
		return -ENODEV;

	FUNC0(&master->cmd_lock);
	master->t_send_delay = t_send_delay;
	master->t_echo_delay = t_echo_delay;
	FUNC1(&master->cmd_lock);

	return 0;
}