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
struct intel_uncore {int fw_domains; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;
typedef  enum forcewake_domain_id { ____Placeholder_forcewake_domain_id } forcewake_domain_id ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FW_DOMAIN_ID_MEDIA_VDBOX0 ; 
 int FW_DOMAIN_ID_MEDIA_VEBOX0 ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int I915_MAX_VCS ; 
 int I915_MAX_VECS ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_uncore*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*) ; 

void FUNC7(struct intel_uncore *uncore)
{
	struct drm_i915_private *i915 = uncore->i915;
	enum forcewake_domains fw_domains = uncore->fw_domains;
	enum forcewake_domain_id domain_id;
	int i;

	if (!FUNC6(uncore) || FUNC2(i915) < 11)
		return;

	for (i = 0; i < I915_MAX_VCS; i++) {
		domain_id = FW_DOMAIN_ID_MEDIA_VDBOX0 + i;

		if (FUNC1(i915, FUNC3(i)))
			continue;

		if (fw_domains & FUNC0(domain_id))
			FUNC5(uncore, domain_id);
	}

	for (i = 0; i < I915_MAX_VECS; i++) {
		domain_id = FW_DOMAIN_ID_MEDIA_VEBOX0 + i;

		if (FUNC1(i915, FUNC4(i)))
			continue;

		if (fw_domains & FUNC0(domain_id))
			FUNC5(uncore, domain_id);
	}
}