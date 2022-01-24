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
struct dm_target {int dummy; } ;
struct clone_info {struct bio* bio; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_SECURE_ERASE ; 
 scalar_t__ REQ_OP_WRITE_SAME ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 int FUNC0 (struct clone_info*,struct dm_target*) ; 
 int FUNC1 (struct clone_info*,struct dm_target*) ; 
 int FUNC2 (struct clone_info*,struct dm_target*) ; 
 int FUNC3 (struct clone_info*,struct dm_target*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 

__attribute__((used)) static bool FUNC5(struct clone_info *ci, struct dm_target *ti,
				  int *result)
{
	struct bio *bio = ci->bio;

	if (FUNC4(bio) == REQ_OP_DISCARD)
		*result = FUNC0(ci, ti);
	else if (FUNC4(bio) == REQ_OP_SECURE_ERASE)
		*result = FUNC1(ci, ti);
	else if (FUNC4(bio) == REQ_OP_WRITE_SAME)
		*result = FUNC2(ci, ti);
	else if (FUNC4(bio) == REQ_OP_WRITE_ZEROES)
		*result = FUNC3(ci, ti);
	else
		return false;

	return true;
}