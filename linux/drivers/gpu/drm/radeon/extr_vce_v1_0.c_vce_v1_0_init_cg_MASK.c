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
typedef  int u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int CGC_DYN_CLOCK_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  VCE_CLOCK_GATING_B ; 
 int /*<<< orphan*/  VCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  VCE_UENC_REG_CLOCK_GATING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct radeon_device *rdev)
{
	u32 tmp;

	tmp = FUNC0(VCE_CLOCK_GATING_A);
	tmp |= CGC_DYN_CLOCK_MODE;
	FUNC1(VCE_CLOCK_GATING_A, tmp);

	tmp = FUNC0(VCE_CLOCK_GATING_B);
	tmp |= 0x1e;
	tmp &= ~0xe100e1;
	FUNC1(VCE_CLOCK_GATING_B, tmp);

	tmp = FUNC0(VCE_UENC_CLOCK_GATING);
	tmp &= ~0xff9ff000;
	FUNC1(VCE_UENC_CLOCK_GATING, tmp);

	tmp = FUNC0(VCE_UENC_REG_CLOCK_GATING);
	tmp &= ~0x3ff;
	FUNC1(VCE_UENC_REG_CLOCK_GATING, tmp);
}