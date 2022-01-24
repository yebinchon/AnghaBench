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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VGACNTRL ; 
 int /*<<< orphan*/  VGA_DISP_DISABLE ; 
 int /*<<< orphan*/  VGA_SR_DATA ; 
 int /*<<< orphan*/  VGA_SR_INDEX ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_device *dev)
{
	u8 sr1;
	u32 vga_reg;

	vga_reg = VGACNTRL;

	FUNC3(1, VGA_SR_INDEX);
	sr1 = FUNC2(VGA_SR_DATA);
	FUNC3(sr1 | 1<<5, VGA_SR_DATA);
	FUNC4(300);

	FUNC1(vga_reg, VGA_DISP_DISABLE);
	FUNC0(vga_reg);
}