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
struct intel_timeline {scalar_t__* hwsp_seqno; scalar_t__ seqno; } ;
struct drm_i915_private {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct intel_timeline* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct intel_timeline*) ; 
 struct intel_timeline* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static struct intel_timeline *
FUNC5(struct drm_i915_private *i915)
{
	struct intel_timeline *tl;

	tl = FUNC2(&i915->gt, NULL);
	if (FUNC1(tl))
		return tl;

	if (*tl->hwsp_seqno != tl->seqno) {
		FUNC4("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
		       *tl->hwsp_seqno, tl->seqno);
		FUNC3(tl);
		return FUNC0(-EINVAL);
	}

	return tl;
}