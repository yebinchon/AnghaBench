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
struct intel_guc_ct_channel {int /*<<< orphan*/  vma; int /*<<< orphan*/  enabled; } ;
struct intel_guc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_VMA_RELEASE_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct intel_guc *guc,
		      struct intel_guc_ct_channel *ctch)
{
	FUNC0(ctch->enabled);

	FUNC1(&ctch->vma, I915_VMA_RELEASE_MAP);
}