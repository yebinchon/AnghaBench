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
struct i915_syncmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct i915_syncmap**) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_syncmap**) ; 
 scalar_t__ FUNC2 (struct i915_syncmap*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct i915_syncmap *sync, int err)
{
	char *buf;

	if (!err)
		return FUNC0(&sync);

	buf = FUNC4(PAGE_SIZE, GFP_KERNEL);
	if (!buf)
		goto skip;

	if (FUNC2(sync, buf, PAGE_SIZE))
		FUNC5("%s", buf);

	FUNC3(buf);

skip:
	FUNC1(&sync);
	return err;
}