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
typedef  size_t u32 ;
struct TYPE_2__ {size_t* dmc_payload; size_t dmc_fw_size; size_t mmio_count; scalar_t__ dc_state; int /*<<< orphan*/ * mmiodata; int /*<<< orphan*/ * mmioaddr; } ;
struct drm_i915_private {TYPE_1__ csr; int /*<<< orphan*/  runtime_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct drm_i915_private *dev_priv)
{
	u32 *payload = dev_priv->csr.dmc_payload;
	u32 i, fw_size;

	if (!FUNC2(dev_priv)) {
		FUNC1("No CSR support available for this platform\n");
		return;
	}

	if (!dev_priv->csr.dmc_payload) {
		FUNC1("Tried to program CSR with empty payload\n");
		return;
	}

	fw_size = dev_priv->csr.dmc_fw_size;
	FUNC5(&dev_priv->runtime_pm);

	FUNC7();

	for (i = 0; i < fw_size; i++)
		FUNC4(FUNC0(i), payload[i]);

	FUNC8();

	for (i = 0; i < dev_priv->csr.mmio_count; i++) {
		FUNC3(dev_priv->csr.mmioaddr[i],
			   dev_priv->csr.mmiodata[i]);
	}

	dev_priv->csr.dc_state = 0;

	FUNC6(dev_priv);
}