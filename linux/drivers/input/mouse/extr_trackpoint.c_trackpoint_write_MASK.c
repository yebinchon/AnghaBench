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
typedef  int /*<<< orphan*/  u8 ;
struct ps2dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TP_COMMAND ; 
 int /*<<< orphan*/  TP_WRITE_MEM ; 
 int FUNC1 (struct ps2dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ps2dev *ps2dev, u8 loc, u8 val)
{
	u8 param[3] = { TP_WRITE_MEM, loc, val };

	return FUNC1(ps2dev, param, FUNC0(3, 0, TP_COMMAND));
}