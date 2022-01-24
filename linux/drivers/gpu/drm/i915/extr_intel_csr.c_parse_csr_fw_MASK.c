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
typedef  size_t u32 ;
struct stepping_info {int dummy; } ;
struct intel_package_header {int dummy; } ;
struct intel_dmc_header_base {int dummy; } ;
struct intel_css_header {int dummy; } ;
struct intel_csr {int dummy; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/ * data; } ;
struct drm_i915_private {struct intel_csr csr; } ;

/* Variables and functions */
 struct stepping_info* FUNC0 (struct drm_i915_private*) ; 
 size_t FUNC1 (struct intel_csr*,struct intel_css_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_csr*,struct intel_dmc_header_base*,scalar_t__) ; 
 size_t FUNC3 (struct intel_csr*,struct intel_package_header*,struct stepping_info const*,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
			 const struct firmware *fw)
{
	struct intel_css_header *css_header;
	struct intel_package_header *package_header;
	struct intel_dmc_header_base *dmc_header;
	struct intel_csr *csr = &dev_priv->csr;
	const struct stepping_info *si = FUNC0(dev_priv);
	u32 readcount = 0;
	u32 r;

	if (!fw)
		return;

	/* Extract CSS Header information */
	css_header = (struct intel_css_header *)fw->data;
	r = FUNC1(csr, css_header, fw->size);
	if (!r)
		return;

	readcount += r;

	/* Extract Package Header information */
	package_header = (struct intel_package_header *)&fw->data[readcount];
	r = FUNC3(csr, package_header, si, fw->size - readcount);
	if (!r)
		return;

	readcount += r;

	/* Extract dmc_header information */
	dmc_header = (struct intel_dmc_header_base *)&fw->data[readcount];
	FUNC2(csr, dmc_header, fw->size - readcount);
}