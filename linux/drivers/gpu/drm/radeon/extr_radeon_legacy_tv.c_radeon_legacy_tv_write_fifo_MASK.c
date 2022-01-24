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
typedef  int uint16_t ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct radeon_encoder {TYPE_1__ base; } ;
struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 int RADEON_HOST_FIFO_WT ; 
 int RADEON_HOST_FIFO_WT_ACK ; 
 int /*<<< orphan*/  RADEON_TV_HOST_RD_WT_CNTL ; 
 int /*<<< orphan*/  RADEON_TV_HOST_WRITE_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_encoder *radeon_encoder,
					uint16_t addr, uint32_t value)
{
	struct drm_device *dev = radeon_encoder->base.dev;
	struct radeon_device *rdev = dev->dev_private;
	uint32_t tmp;
	int i = 0;

	FUNC1(RADEON_TV_HOST_WRITE_DATA, value);

	FUNC1(RADEON_TV_HOST_RD_WT_CNTL, addr);
	FUNC1(RADEON_TV_HOST_RD_WT_CNTL, addr | RADEON_HOST_FIFO_WT);

	do {
		tmp = FUNC0(RADEON_TV_HOST_RD_WT_CNTL);
		if ((tmp & RADEON_HOST_FIFO_WT_ACK) == 0)
			break;
		i++;
	} while (i < 10000);
	FUNC1(RADEON_TV_HOST_RD_WT_CNTL, 0);
}