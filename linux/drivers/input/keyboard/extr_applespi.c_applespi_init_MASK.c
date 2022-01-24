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
struct applespi_data {int want_mt_init_cmd; int want_tp_info_cmd; int /*<<< orphan*/  cmd_msg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct applespi_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct applespi_data *applespi, bool is_resume)
{
	unsigned long flags;

	FUNC1(&applespi->cmd_msg_lock, flags);

	if (is_resume)
		applespi->want_mt_init_cmd = true;
	else
		applespi->want_tp_info_cmd = true;
	FUNC0(applespi);

	FUNC2(&applespi->cmd_msg_lock, flags);
}