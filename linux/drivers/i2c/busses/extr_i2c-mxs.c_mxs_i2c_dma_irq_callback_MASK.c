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
struct mxs_i2c_dev {int /*<<< orphan*/  cmd_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mxs_i2c_dev*) ; 

__attribute__((used)) static void FUNC2(void *param)
{
	struct mxs_i2c_dev *i2c = param;

	FUNC0(&i2c->cmd_complete);
	FUNC1(i2c);
}