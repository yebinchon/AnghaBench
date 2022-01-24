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
struct zx_vga {scalar_t__ mmio; int /*<<< orphan*/  i2c_wclk; } ;

/* Variables and functions */
 int DDC_ADDR ; 
 int FUNC0 (unsigned long,int) ; 
 scalar_t__ VGA_AUTO_DETECT_PARA ; 
 scalar_t__ VGA_AUTO_DETECT_SEL ; 
 scalar_t__ VGA_CLK_DIV_FS ; 
 scalar_t__ VGA_CMD_CFG ; 
 int /*<<< orphan*/  VGA_CMD_TRANS ; 
 int VGA_DETECT_SEL_NO_DEVICE ; 
 scalar_t__ VGA_DEVICE_ADDR ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct zx_vga *vga)
{
	unsigned long ref = FUNC1(vga->i2c_wclk);
	int div;

	/*
	 * Set up I2C fast speed divider per formula below to get 400kHz.
	 *   scl = ref / ((div + 1) * 4)
	 */
	div = FUNC0(ref / 1000, 400 * 4) - 1;
	FUNC2(vga->mmio + VGA_CLK_DIV_FS, div);

	/* Set up device detection */
	FUNC2(vga->mmio + VGA_AUTO_DETECT_PARA, 0x80);
	FUNC2(vga->mmio + VGA_AUTO_DETECT_SEL, VGA_DETECT_SEL_NO_DEVICE);

	/*
	 * We need to poke monitor via DDC bus to get connection irq
	 * start working.
	 */
	FUNC2(vga->mmio + VGA_DEVICE_ADDR, DDC_ADDR);
	FUNC3(vga->mmio + VGA_CMD_CFG, VGA_CMD_TRANS, VGA_CMD_TRANS);
}