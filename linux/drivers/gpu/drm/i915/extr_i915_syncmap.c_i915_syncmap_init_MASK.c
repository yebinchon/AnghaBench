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
struct i915_syncmap {int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ KSYNCMAP ; 
 scalar_t__ SHIFT ; 

void FUNC3(struct i915_syncmap **root)
{
	FUNC2(KSYNCMAP);
	FUNC2(SHIFT);
	FUNC1(KSYNCMAP > FUNC0((*root)->bitmap));
	*root = NULL;
}