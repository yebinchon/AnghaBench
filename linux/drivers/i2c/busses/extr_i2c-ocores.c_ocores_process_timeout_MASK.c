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
struct ocores_i2c {int /*<<< orphan*/  process_lock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCI2C_CMD ; 
 int /*<<< orphan*/  OCI2C_CMD_STOP ; 
 int /*<<< orphan*/  STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct ocores_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct ocores_i2c *i2c)
{
	unsigned long flags;

	FUNC1(&i2c->process_lock, flags);
	i2c->state = STATE_ERROR;
	FUNC0(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
	FUNC2(&i2c->process_lock, flags);
}