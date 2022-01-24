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
struct xenkbd_motion {int rel_x; int rel_y; int rel_z; } ;
struct xenkbd_info {int /*<<< orphan*/  ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  REL_WHEEL ; 
 int /*<<< orphan*/  REL_X ; 
 int /*<<< orphan*/  REL_Y ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct xenkbd_info *info,
				       struct xenkbd_motion *motion)
{
	if (FUNC2(!info->ptr))
		return;

	FUNC0(info->ptr, REL_X, motion->rel_x);
	FUNC0(info->ptr, REL_Y, motion->rel_y);
	if (motion->rel_z)
		FUNC0(info->ptr, REL_WHEEL, -motion->rel_z);
	FUNC1(info->ptr);
}