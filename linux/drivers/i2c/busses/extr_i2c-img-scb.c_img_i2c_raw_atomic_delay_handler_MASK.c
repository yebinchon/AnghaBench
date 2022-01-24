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
typedef  int /*<<< orphan*/  u32 ;
struct img_i2c {int /*<<< orphan*/  at_cur_data; int /*<<< orphan*/  at_cur_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODE_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct img_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct img_i2c *i2c,
					u32 int_status, u32 line_status)
{
	/* Stay in raw mode for this, so we don't just loop infinitely */
	FUNC0(i2c, i2c->at_cur_cmd, i2c->at_cur_data);
	FUNC1(i2c, MODE_ATOMIC);
	return 0;
}