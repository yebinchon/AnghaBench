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
struct qxl_device {int dummy; } ;
struct qxl_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qxl_device*,struct qxl_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*,struct qxl_bo*) ; 

__attribute__((used)) static void FUNC2(struct qxl_device *qdev, struct qxl_bo *surf, bool do_update_area)
{
	/* no need to update area if we are just freeing the surface normally */
	if (do_update_area)
		FUNC1(qdev, surf);

	/* nuke the surface id at the hw */
	FUNC0(qdev, surf);
}