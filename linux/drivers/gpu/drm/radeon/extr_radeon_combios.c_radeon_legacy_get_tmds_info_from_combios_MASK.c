#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint16_t ;
struct radeon_encoder_int_tmds {TYPE_2__* tmds_pll; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {void* value; void* freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMBIOS_DFP_INFO_TABLE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 

bool FUNC6(struct radeon_encoder *encoder,
					      struct radeon_encoder_int_tmds *tmds)
{
	struct drm_device *dev = encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	uint16_t tmds_info;
	int i, n;
	uint8_t ver;

	tmds_info = FUNC5(dev, COMBIOS_DFP_INFO_TABLE);

	if (tmds_info) {
		ver = FUNC4(tmds_info);
		FUNC0("DFP table revision: %d\n", ver);
		if (ver == 3) {
			n = FUNC4(tmds_info + 5) + 1;
			if (n > 4)
				n = 4;
			for (i = 0; i < n; i++) {
				tmds->tmds_pll[i].value =
				    FUNC3(tmds_info + i * 10 + 0x08);
				tmds->tmds_pll[i].freq =
				    FUNC2(tmds_info + i * 10 + 0x10);
				FUNC0("TMDS PLL From COMBIOS %u %x\n",
					  tmds->tmds_pll[i].freq,
					  tmds->tmds_pll[i].value);
			}
		} else if (ver == 4) {
			int stride = 0;
			n = FUNC4(tmds_info + 5) + 1;
			if (n > 4)
				n = 4;
			for (i = 0; i < n; i++) {
				tmds->tmds_pll[i].value =
				    FUNC3(tmds_info + stride + 0x08);
				tmds->tmds_pll[i].freq =
				    FUNC2(tmds_info + stride + 0x10);
				if (i == 0)
					stride += 10;
				else
					stride += 6;
				FUNC0("TMDS PLL From COMBIOS %u %x\n",
					  tmds->tmds_pll[i].freq,
					  tmds->tmds_pll[i].value);
			}
		}
	} else {
		FUNC1("No TMDS info found in BIOS\n");
		return false;
	}
	return true;
}