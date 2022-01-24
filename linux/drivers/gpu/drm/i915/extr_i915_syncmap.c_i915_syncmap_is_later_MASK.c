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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct i915_syncmap {scalar_t__ prefix; int bitmap; int /*<<< orphan*/  height; struct i915_syncmap* parent; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 size_t FUNC1 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 struct i915_syncmap** FUNC3 (struct i915_syncmap*) ; 
 unsigned int FUNC4 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct i915_syncmap*) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC9(struct i915_syncmap **root, u64 id, u32 seqno)
{
	struct i915_syncmap *p;
	unsigned int idx;

	p = *root;
	if (!p)
		return false;

	if (FUNC7(FUNC5(p, id) == p->prefix))
		goto found;

	/* First climb the tree back to a parent branch */
	do {
		p = p->parent;
		if (!p)
			return false;

		if (FUNC2(p, id) == p->prefix)
			break;
	} while (1);

	/* And then descend again until we find our leaf */
	do {
		if (!p->height)
			break;

		p = FUNC3(p)[FUNC1(p, id)];
		if (!p)
			return false;

		if (FUNC2(p, id) != p->prefix)
			return false;
	} while (1);

	*root = p;
found:
	idx = FUNC4(p, id);
	if (!(p->bitmap & FUNC0(idx)))
		return false;

	return FUNC8(FUNC6(p)[idx], seqno);
}