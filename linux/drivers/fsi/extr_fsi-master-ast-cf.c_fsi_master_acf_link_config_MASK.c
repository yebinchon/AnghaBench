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
struct fsi_master_acf {int /*<<< orphan*/  lock; scalar_t__ sram; void* t_echo_delay; void* t_send_delay; int /*<<< orphan*/  dev; } ;
struct fsi_master {int dummy; } ;

/* Variables and functions */
 scalar_t__ ECHO_DLY_REG ; 
 int ENODEV ; 
 scalar_t__ SEND_DLY_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fsi_master_acf* FUNC4 (struct fsi_master*) ; 

__attribute__((used)) static int FUNC5(struct fsi_master *_master, int link,
				      u8 t_send_delay, u8 t_echo_delay)
{
	struct fsi_master_acf *master = FUNC4(_master);

	if (link != 0)
		return -ENODEV;

	FUNC2(&master->lock);
	master->t_send_delay = t_send_delay;
	master->t_echo_delay = t_echo_delay;
	FUNC0(master->dev, "Changing delays: send=%d echo=%d\n",
		t_send_delay, t_echo_delay);
	FUNC1(master->t_send_delay, master->sram + SEND_DLY_REG);
	FUNC1(master->t_echo_delay, master->sram + ECHO_DLY_REG);
	FUNC3(&master->lock);

	return 0;
}