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
struct cached_dev {int /*<<< orphan*/  sb; int /*<<< orphan*/  has_dirty; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ BDEV_STATE_DIRTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cached_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cached_dev*) ; 

__attribute__((used)) static inline void FUNC6(struct cached_dev *dc)
{
	if (!FUNC2(&dc->has_dirty) &&
	    !FUNC3(&dc->has_dirty, 1)) {
		if (FUNC0(&dc->sb) != BDEV_STATE_DIRTY) {
			FUNC1(&dc->sb, BDEV_STATE_DIRTY);
			/* XXX: should do this synchronously */
			FUNC4(dc, NULL);
		}

		FUNC5(dc);
	}
}