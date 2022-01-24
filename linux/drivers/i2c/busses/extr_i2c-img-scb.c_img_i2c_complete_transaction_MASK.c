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
struct img_i2c {int msg_status; int /*<<< orphan*/  msg_complete; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_INACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2c*,int) ; 

__attribute__((used)) static void FUNC3(struct img_i2c *i2c, int status)
{
	FUNC1(i2c, MODE_INACTIVE);
	if (status) {
		i2c->msg_status = status;
		FUNC2(i2c, false);
	}
	FUNC0(&i2c->msg_complete);
}