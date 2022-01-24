#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ chunkshift; } ;
struct bitmap {TYPE_2__* mddev; TYPE_1__ counts; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_4__ {scalar_t__ recovery_cp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitmap*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*,scalar_t__,int) ; 

void FUNC2(struct bitmap *bitmap, unsigned long s, unsigned long e)
{
	unsigned long chunk;

	for (chunk = s; chunk <= e; chunk++) {
		sector_t sec = (sector_t)chunk << bitmap->counts.chunkshift;
		FUNC1(bitmap, sec, 1);
		FUNC0(bitmap, sec);
		if (sec < bitmap->mddev->recovery_cp)
			/* We are asserting that the array is dirty,
			 * so move the recovery_cp address back so
			 * that it is obvious that it is dirty
			 */
			bitmap->mddev->recovery_cp = sec;
	}
}