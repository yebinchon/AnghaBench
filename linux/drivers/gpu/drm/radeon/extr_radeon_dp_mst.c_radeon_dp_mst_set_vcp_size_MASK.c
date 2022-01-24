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
typedef  int uint32_t ;
struct radeon_encoder_mst {int /*<<< orphan*/  fe; } ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {struct radeon_encoder_mst* enc_priv; TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int NI_DP_MSE_RATE_CNTL ; 
 int NI_DP_MSE_RATE_UPDATE ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct radeon_encoder *mst, s64 avg_time_slots_per_mtp)
{
	struct drm_device *dev = mst->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder_mst *mst_enc = mst->enc_priv;
	uint32_t val, temp;
	uint32_t offset = FUNC7(mst_enc->fe);
	int retries = 0;
	uint32_t x = FUNC5(avg_time_slots_per_mtp);
	uint32_t y = FUNC6((avg_time_slots_per_mtp - x) << 26);

	val = FUNC1(x) | FUNC2(y);

	FUNC4(NI_DP_MSE_RATE_CNTL + offset, val);

	do {
		temp = FUNC3(NI_DP_MSE_RATE_UPDATE + offset);
		FUNC8(10);
	} while ((temp & 0x1) && (retries++ < 10000));

	if (retries >= 10000)
		FUNC0("timed out wait for rate cntl %d\n", mst_enc->fe);
	return 0;
}