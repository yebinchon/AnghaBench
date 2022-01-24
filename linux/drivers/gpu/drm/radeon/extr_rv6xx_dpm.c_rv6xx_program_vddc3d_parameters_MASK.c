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
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_CTXCGTT3DRPHC_DFLT ; 
 int /*<<< orphan*/  R600_CTXCGTT3DRSDC_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORPHC_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORSDC_DFLT ; 
 int /*<<< orphan*/  R600_VDDC3DOORSU_DFLT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct radeon_device *rdev)
{
	FUNC4(rdev, R600_VDDC3DOORSU_DFLT);
	FUNC2(rdev, R600_VDDC3DOORPHC_DFLT);
	FUNC3(rdev, R600_VDDC3DOORSDC_DFLT);
	FUNC0(rdev, R600_CTXCGTT3DRPHC_DFLT);
	FUNC1(rdev, R600_CTXCGTT3DRSDC_DFLT);
}