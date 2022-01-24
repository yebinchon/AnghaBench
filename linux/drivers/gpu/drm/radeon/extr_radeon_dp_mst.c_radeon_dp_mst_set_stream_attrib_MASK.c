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
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {scalar_t__ offset; TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int NI_DP_MSE_16_MTP_KEEPOUT ; 
 scalar_t__ NI_DP_MSE_SAT0 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ NI_DP_MSE_SAT_UPDATE ; 
 int NI_DP_MSE_SAT_UPDATE_MASK ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct radeon_encoder *primary,
					   int stream_number,
					   int fe,
					   int slots)
{
	struct drm_device *dev = primary->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	u32 temp, val;
	int retries  = 0;
	int satreg, satidx;

	satreg = stream_number >> 1;
	satidx = stream_number & 1;

	temp = FUNC4(NI_DP_MSE_SAT0 + satreg + primary->offset);

	val = FUNC2(slots) | FUNC3(fe);

	val <<= (16 * satidx);

	temp &= ~(0xffff << (16 * satidx));

	temp |= val;

	FUNC0("writing 0x%08x 0x%08x\n", NI_DP_MSE_SAT0 + satreg + primary->offset, temp);
	FUNC5(NI_DP_MSE_SAT0 + satreg + primary->offset, temp);

	FUNC5(NI_DP_MSE_SAT_UPDATE + primary->offset, 1);

	do {
		unsigned value1, value2;
		FUNC6(10);
		temp = FUNC4(NI_DP_MSE_SAT_UPDATE + primary->offset);

		value1 = temp & NI_DP_MSE_SAT_UPDATE_MASK;
		value2 = temp & NI_DP_MSE_16_MTP_KEEPOUT;

		if (!value1 && !value2)
			break;
	} while (retries++ < 50);

	if (retries == 10000)
		FUNC1("timed out waitin for SAT update %d\n", primary->offset);

	/* MTP 16 ? */
	return 0;
}