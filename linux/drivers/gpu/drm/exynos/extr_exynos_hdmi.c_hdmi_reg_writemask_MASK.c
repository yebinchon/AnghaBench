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
struct hdmi_context {int regs; } ;

/* Variables and functions */
 int FUNC0 (struct hdmi_context*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static inline void FUNC3(struct hdmi_context *hdata,
				 u32 reg_id, u32 value, u32 mask)
{
	u32 old;

	reg_id = FUNC0(hdata, reg_id);
	old = FUNC1(hdata->regs + reg_id);
	value = (value & mask) | (old & ~mask);
	FUNC2(value, hdata->regs + reg_id);
}