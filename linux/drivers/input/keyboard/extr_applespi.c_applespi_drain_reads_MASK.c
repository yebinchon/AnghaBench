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
struct applespi_data {int suspended; int /*<<< orphan*/  cmd_msg_lock; int /*<<< orphan*/  read_active; int /*<<< orphan*/  drain_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct applespi_data *applespi)
{
	unsigned long flags;

	FUNC0(&applespi->cmd_msg_lock, flags);

	FUNC2(applespi->drain_complete, !applespi->read_active,
			    applespi->cmd_msg_lock);

	applespi->suspended = true;

	FUNC1(&applespi->cmd_msg_lock, flags);
}