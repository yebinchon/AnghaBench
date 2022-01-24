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
struct i915_syncmap {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  prefix; scalar_t__ height; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct i915_syncmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_syncmap**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i915_syncmap**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC6(struct i915_syncmap **sync, u64 context, u32 seqno)
{
	int err;

	err = FUNC3(sync, context, seqno);
	if (err)
		return err;

	if ((*sync)->height) {
		FUNC5("Inserting context=%llx did not return leaf (height=%d, prefix=%llx\n",
		       context, (*sync)->height, (*sync)->prefix);
		return -EINVAL;
	}

	if (FUNC1((*sync)->bitmap) != 1) {
		FUNC5("First entry into leaf (context=%llx) does not contain a single entry, found %x (count=%d)!\n",
		       context, (*sync)->bitmap, FUNC1((*sync)->bitmap));
		return -EINVAL;
	}

	err = FUNC0((*sync), FUNC4((*sync)->bitmap), seqno);
	if (err)
		return err;

	if (!FUNC2(sync, context, seqno)) {
		FUNC5("Lookup of first entry context=%llx/seqno=%x failed!\n",
		       context, seqno);
		return -EINVAL;
	}

	return 0;
}