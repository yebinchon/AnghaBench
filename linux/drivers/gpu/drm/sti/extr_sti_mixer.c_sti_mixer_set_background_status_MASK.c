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
struct sti_mixer {int dummy; } ;

/* Variables and functions */
 int GAM_CTL_BACK_MASK ; 
 int /*<<< orphan*/  GAM_MIXER_CTL ; 
 int FUNC0 (struct sti_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_mixer*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct sti_mixer *mixer, bool enable)
{
	u32 val = FUNC0(mixer, GAM_MIXER_CTL);

	val &= ~GAM_CTL_BACK_MASK;
	val |= enable;
	FUNC1(mixer, GAM_MIXER_CTL, val);
}