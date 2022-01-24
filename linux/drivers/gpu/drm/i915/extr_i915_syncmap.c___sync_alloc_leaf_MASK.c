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
struct i915_syncmap {int /*<<< orphan*/  prefix; scalar_t__ bitmap; scalar_t__ height; struct i915_syncmap* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int KSYNCMAP ; 
 int /*<<< orphan*/  FUNC0 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 struct i915_syncmap* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static struct i915_syncmap *
FUNC3(struct i915_syncmap *parent, u64 id)
{
	struct i915_syncmap *p;

	p = FUNC1(sizeof(*p) + KSYNCMAP * sizeof(u32), GFP_KERNEL);
	if (FUNC2(!p))
		return NULL;

	p->parent = parent;
	p->height = 0;
	p->bitmap = 0;
	p->prefix = FUNC0(p, id);
	return p;
}