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
struct xenkbd_position {int rel_z; int /*<<< orphan*/  abs_y; int /*<<< orphan*/  abs_x; } ;
struct xenkbd_info {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct xenkbd_info *info,
					 struct xenkbd_position *pos)
{
	if (FUNC3(!info->ptr))
		return;

	FUNC0(info->ptr, ABS_X, pos->abs_x);
	FUNC0(info->ptr, ABS_Y, pos->abs_y);
	if (pos->rel_z)
		FUNC1(info->ptr, REL_WHEEL, -pos->rel_z);
	FUNC2(info->ptr);
}