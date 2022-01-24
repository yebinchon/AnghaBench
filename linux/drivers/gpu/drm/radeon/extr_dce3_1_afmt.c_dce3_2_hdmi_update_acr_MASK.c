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
struct radeon_hdmi_acr {int /*<<< orphan*/  n_48khz; int /*<<< orphan*/  cts_48khz; int /*<<< orphan*/  n_44_1khz; int /*<<< orphan*/  cts_44_1khz; int /*<<< orphan*/  n_32khz; int /*<<< orphan*/  cts_32khz; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ DCE3_HDMI0_ACR_PACKET_CONTROL ; 
 scalar_t__ HDMI0_ACR_32_0 ; 
 scalar_t__ HDMI0_ACR_32_1 ; 
 scalar_t__ HDMI0_ACR_44_0 ; 
 scalar_t__ HDMI0_ACR_44_1 ; 
 scalar_t__ HDMI0_ACR_48_0 ; 
 scalar_t__ HDMI0_ACR_48_1 ; 
 int HDMI0_ACR_AUTO_SEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_CTS_32_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_CTS_44_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_CTS_48_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_N_32_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_N_44_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_ACR_N_48_MASK ; 
 int HDMI0_ACR_SOURCE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct drm_encoder *encoder, long offset,
	const struct radeon_hdmi_acr *acr)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;

	FUNC6(DCE3_HDMI0_ACR_PACKET_CONTROL + offset,
		HDMI0_ACR_SOURCE |		/* select SW CTS value */
		HDMI0_ACR_AUTO_SEND);	/* allow hw to sent ACR packets when required */

	FUNC7(HDMI0_ACR_32_0 + offset,
		FUNC0(acr->cts_32khz),
		~HDMI0_ACR_CTS_32_MASK);
	FUNC7(HDMI0_ACR_32_1 + offset,
		FUNC3(acr->n_32khz),
		~HDMI0_ACR_N_32_MASK);

	FUNC7(HDMI0_ACR_44_0 + offset,
		FUNC1(acr->cts_44_1khz),
		~HDMI0_ACR_CTS_44_MASK);
	FUNC7(HDMI0_ACR_44_1 + offset,
		FUNC4(acr->n_44_1khz),
		~HDMI0_ACR_N_44_MASK);

	FUNC7(HDMI0_ACR_48_0 + offset,
		FUNC2(acr->cts_48khz),
		~HDMI0_ACR_CTS_48_MASK);
	FUNC7(HDMI0_ACR_48_1 + offset,
		FUNC5(acr->n_48khz),
		~HDMI0_ACR_N_48_MASK);
}