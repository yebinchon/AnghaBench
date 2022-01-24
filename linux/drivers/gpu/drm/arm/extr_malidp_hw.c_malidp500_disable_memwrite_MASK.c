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
typedef  scalar_t__ u32 ;
struct malidp_hw_device {scalar_t__ mw_state; } ;

/* Variables and functions */
 scalar_t__ MALIDP500_SE_CONTROL ; 
 int /*<<< orphan*/  MALIDP_DE_BLOCK ; 
 scalar_t__ MALIDP_DE_DISPLAY_FUNC ; 
 int /*<<< orphan*/  MALIDP_SCALE_ENGINE_EN ; 
 int /*<<< orphan*/  MALIDP_SE_MEMWRITE_EN ; 
 scalar_t__ MW_RESTART ; 
 scalar_t__ MW_START ; 
 scalar_t__ MW_STOP ; 
 scalar_t__ FUNC0 (struct malidp_hw_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct malidp_hw_device*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct malidp_hw_device *hwdev)
{
	u32 base = FUNC0(hwdev, MALIDP_DE_BLOCK);

	if (hwdev->mw_state == MW_START || hwdev->mw_state == MW_RESTART)
		hwdev->mw_state = MW_STOP;
	FUNC1(hwdev, MALIDP_SE_MEMWRITE_EN, MALIDP500_SE_CONTROL);
	FUNC1(hwdev, MALIDP_SCALE_ENGINE_EN, base + MALIDP_DE_DISPLAY_FUNC);
}