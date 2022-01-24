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
struct ad7879 {int /*<<< orphan*/  irq; int /*<<< orphan*/  cmd_crtl1; int /*<<< orphan*/  cmd_crtl3; int /*<<< orphan*/  cmd_crtl2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7879_REG_CTRL1 ; 
 int /*<<< orphan*/  AD7879_REG_CTRL2 ; 
 int /*<<< orphan*/  AD7879_REG_CTRL3 ; 
 int /*<<< orphan*/  FUNC0 (struct ad7879*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ad7879 *ts)
{
	FUNC0(ts, AD7879_REG_CTRL2, ts->cmd_crtl2);
	FUNC0(ts, AD7879_REG_CTRL3, ts->cmd_crtl3);
	FUNC0(ts, AD7879_REG_CTRL1, ts->cmd_crtl1);

	FUNC1(ts->irq);
}