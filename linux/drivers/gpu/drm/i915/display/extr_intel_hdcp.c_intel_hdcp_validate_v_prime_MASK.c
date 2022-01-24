#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct intel_hdcp_shim {int (* read_v_prime_part ) (struct intel_digital_port*,int,int*) ;} ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_6__ {TYPE_2__ base; } ;
struct intel_digital_port {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  sha_text ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DRM_HDCP_KSV_LEN ; 
 int DRM_HDCP_V_PRIME_NUM_PARTS ; 
 int EINVAL ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HDCP_REP_CTL ; 
 int /*<<< orphan*/  HDCP_SHA1_COMPLETE ; 
 int HDCP_SHA1_COMPLETE_HASH ; 
 int HDCP_SHA1_TEXT_0 ; 
 int HDCP_SHA1_TEXT_16 ; 
 int HDCP_SHA1_TEXT_24 ; 
 int HDCP_SHA1_TEXT_32 ; 
 int HDCP_SHA1_TEXT_8 ; 
 int HDCP_SHA1_V_MATCH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct intel_digital_port*) ; 
 int FUNC7 (struct drm_i915_private*,int) ; 
 int FUNC8 (struct intel_digital_port*,int,int*) ; 

__attribute__((used)) static
int FUNC9(struct intel_digital_port *intel_dig_port,
				const struct intel_hdcp_shim *shim,
				u8 *ksv_fifo, u8 num_downstream, u8 *bstatus)
{
	struct drm_i915_private *dev_priv;
	u32 vprime, sha_text, sha_leftovers, rep_ctl;
	int ret, i, j, sha_idx;

	dev_priv = intel_dig_port->base.base.dev->dev_private;

	/* Process V' values from the receiver */
	for (i = 0; i < DRM_HDCP_V_PRIME_NUM_PARTS; i++) {
		ret = shim->read_v_prime_part(intel_dig_port, i, &vprime);
		if (ret)
			return ret;
		FUNC4(FUNC2(i), vprime);
	}

	/*
	 * We need to write the concatenation of all device KSVs, BINFO (DP) ||
	 * BSTATUS (HDMI), and M0 (which is added via HDCP_REP_CTL). This byte
	 * stream is written via the HDCP_SHA_TEXT register in 32-bit
	 * increments. Every 64 bytes, we need to write HDCP_REP_CTL again. This
	 * index will keep track of our progress through the 64 bytes as well as
	 * helping us work the 40-bit KSVs through our 32-bit register.
	 *
	 * NOTE: data passed via HDCP_SHA_TEXT should be big-endian
	 */
	sha_idx = 0;
	sha_text = 0;
	sha_leftovers = 0;
	rep_ctl = FUNC6(intel_dig_port);
	FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
	for (i = 0; i < num_downstream; i++) {
		unsigned int sha_empty;
		u8 *ksv = &ksv_fifo[i * DRM_HDCP_KSV_LEN];

		/* Fill up the empty slots in sha_text and write it out */
		sha_empty = sizeof(sha_text) - sha_leftovers;
		for (j = 0; j < sha_empty; j++)
			sha_text |= ksv[j] << ((sizeof(sha_text) - j - 1) * 8);

		ret = FUNC7(dev_priv, sha_text);
		if (ret < 0)
			return ret;

		/* Programming guide writes this every 64 bytes */
		sha_idx += sizeof(sha_text);
		if (!(sha_idx % 64))
			FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);

		/* Store the leftover bytes from the ksv in sha_text */
		sha_leftovers = DRM_HDCP_KSV_LEN - sha_empty;
		sha_text = 0;
		for (j = 0; j < sha_leftovers; j++)
			sha_text |= ksv[sha_empty + j] <<
					((sizeof(sha_text) - j - 1) * 8);

		/*
		 * If we still have room in sha_text for more data, continue.
		 * Otherwise, write it out immediately.
		 */
		if (sizeof(sha_text) > sha_leftovers)
			continue;

		ret = FUNC7(dev_priv, sha_text);
		if (ret < 0)
			return ret;
		sha_leftovers = 0;
		sha_text = 0;
		sha_idx += sizeof(sha_text);
	}

	/*
	 * We need to write BINFO/BSTATUS, and M0 now. Depending on how many
	 * bytes are leftover from the last ksv, we might be able to fit them
	 * all in sha_text (first 2 cases), or we might need to split them up
	 * into 2 writes (last 2 cases).
	 */
	if (sha_leftovers == 0) {
		/* Write 16 bits of text, 16 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
		ret = FUNC7(dev_priv,
					   bstatus[0] << 8 | bstatus[1]);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 32 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 16 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_16);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

	} else if (sha_leftovers == 1) {
		/* Write 24 bits of text, 8 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
		sha_text |= bstatus[0] << 16 | bstatus[1] << 8;
		/* Only 24-bits of data, must be in the LSB */
		sha_text = (sha_text & 0xffffff00) >> 8;
		ret = FUNC7(dev_priv, sha_text);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 32 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 24 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

	} else if (sha_leftovers == 2) {
		/* Write 32 bits of text */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
		sha_text |= bstatus[0] << 24 | bstatus[1] << 16;
		ret = FUNC7(dev_priv, sha_text);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 64 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
		for (i = 0; i < 2; i++) {
			ret = FUNC7(dev_priv, 0);
			if (ret < 0)
				return ret;
			sha_idx += sizeof(sha_text);
		}
	} else if (sha_leftovers == 3) {
		/* Write 32 bits of text */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
		sha_text |= bstatus[0] << 24;
		ret = FUNC7(dev_priv, sha_text);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 8 bits of text, 24 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_8);
		ret = FUNC7(dev_priv, bstatus[1]);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 32 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_0);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);

		/* Write 8 bits of M0 */
		FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_24);
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);
	} else {
		FUNC0("Invalid number of leftovers %d\n",
			      sha_leftovers);
		return -EINVAL;
	}

	FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_TEXT_32);
	/* Fill up to 64-4 bytes with zeros (leave the last write for length) */
	while ((sha_idx % 64) < (64 - sizeof(sha_text))) {
		ret = FUNC7(dev_priv, 0);
		if (ret < 0)
			return ret;
		sha_idx += sizeof(sha_text);
	}

	/*
	 * Last write gets the length of the concatenation in bits. That is:
	 *  - 5 bytes per device
	 *  - 10 bytes for BINFO/BSTATUS(2), M0(8)
	 */
	sha_text = (num_downstream * 5 + 10) * 8;
	ret = FUNC7(dev_priv, sha_text);
	if (ret < 0)
		return ret;

	/* Tell the HW we're done with the hash and wait for it to ACK */
	FUNC4(HDCP_REP_CTL, rep_ctl | HDCP_SHA1_COMPLETE_HASH);
	if (FUNC5(dev_priv, HDCP_REP_CTL,
				  HDCP_SHA1_COMPLETE, 1)) {
		FUNC1("Timed out waiting for SHA1 complete\n");
		return -ETIMEDOUT;
	}
	if (!(FUNC3(HDCP_REP_CTL) & HDCP_SHA1_V_MATCH)) {
		FUNC0("SHA-1 mismatch, HDCP failed\n");
		return -ENXIO;
	}

	return 0;
}