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
struct dce_abm {int dummy; } ;
struct abm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BL1_PWM_CURRENT_ABM_LEVEL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce_abm* FUNC1 (struct abm*) ; 

__attribute__((used)) static unsigned int FUNC2(struct abm *abm)
{
	struct dce_abm *abm_dce = FUNC1(abm);
	unsigned int backlight = FUNC0(BL1_PWM_CURRENT_ABM_LEVEL);

	/* return backlight in hardware format which is unsigned 17 bits, with
	 * 1 bit integer and 16 bit fractional
	 */
	return backlight;
}