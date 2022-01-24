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
struct v3d_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v3d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v3d_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v3d_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v3d_dev*,int /*<<< orphan*/ ) ; 

void
FUNC4(struct v3d_dev *v3d)
{
	/* Invalidate the caches from the outside in.  That way if
	 * another CL's concurrent use of nearby memory were to pull
	 * an invalidated cacheline back in, we wouldn't leave stale
	 * data in the inner cache.
	 */
	FUNC1(v3d);
	FUNC2(v3d, 0);
	FUNC0(v3d, 0);
	FUNC3(v3d, 0);
}