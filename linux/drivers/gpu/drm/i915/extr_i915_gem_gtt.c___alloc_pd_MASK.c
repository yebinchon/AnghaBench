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
struct i915_page_directory {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_GFP_ALLOW_FAIL ; 
 struct i915_page_directory* FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct i915_page_directory *FUNC3(size_t sz)
{
	struct i915_page_directory *pd;

	pd = FUNC0(sz, I915_GFP_ALLOW_FAIL);
	if (FUNC2(!pd))
		return NULL;

	FUNC1(&pd->lock);
	return pd;
}