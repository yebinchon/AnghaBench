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
struct ipu_dc {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ipu_dc *dc, int event, int addr, int priority)
{
	u32 reg;

	reg = FUNC1(dc->base + FUNC0(event));
	reg &= ~(0xffff << (16 * (event & 0x1)));
	reg |= ((addr << 8) | priority) << (16 * (event & 0x1));
	FUNC2(reg, dc->base + FUNC0(event));
}