#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ size; int /*<<< orphan*/  allocated; } ;
struct i915_vma {TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_vma const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC4(const struct i915_vma *vma)
{
	FUNC0(!FUNC1(vma));
	FUNC0(!vma->node.allocated);
	FUNC0(FUNC3(vma->node.start));
	FUNC0(FUNC3(vma->node.start + vma->node.size - 1));
	return FUNC2(vma->node.start);
}