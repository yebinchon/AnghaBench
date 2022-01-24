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

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int MINORBITS ; 
 int /*<<< orphan*/  MINOR_ALLOCED ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int minor)
{
	int r;

	if (minor >= (1 << MINORBITS))
		return -EINVAL;

	FUNC1(GFP_KERNEL);
	FUNC3(&_minor_lock);

	r = FUNC0(&_minor_idr, MINOR_ALLOCED, minor, minor + 1, GFP_NOWAIT);

	FUNC4(&_minor_lock);
	FUNC2();
	if (r < 0)
		return r == -ENOSPC ? -EBUSY : r;
	return 0;
}