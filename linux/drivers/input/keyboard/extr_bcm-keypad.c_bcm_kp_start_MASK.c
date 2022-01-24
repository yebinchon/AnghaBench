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
struct bcm_kp {int kpior; int imr0_val; int imr1_val; int kpemr; int kpcr; scalar_t__ base; void** last_state; scalar_t__ clk; } ;

/* Variables and functions */
 int KPCR_ENABLE ; 
 scalar_t__ KPCR_OFFSET ; 
 scalar_t__ KPEMR0_OFFSET ; 
 scalar_t__ KPEMR1_OFFSET ; 
 scalar_t__ KPEMR2_OFFSET ; 
 scalar_t__ KPEMR3_OFFSET ; 
 scalar_t__ KPICR0_OFFSET ; 
 scalar_t__ KPICR1_OFFSET ; 
 scalar_t__ KPIMR0_OFFSET ; 
 scalar_t__ KPIMR1_OFFSET ; 
 scalar_t__ KPIOR_OFFSET ; 
 scalar_t__ KPSSR0_OFFSET ; 
 scalar_t__ KPSSR1_OFFSET ; 
 int FUNC0 (scalar_t__) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct bcm_kp *kp)
{
	int error;

	if (kp->clk) {
		error = FUNC0(kp->clk);
		if (error)
			return error;
	}

	FUNC2(kp->kpior, kp->base + KPIOR_OFFSET);

	FUNC2(kp->imr0_val, kp->base + KPIMR0_OFFSET);
	FUNC2(kp->imr1_val, kp->base + KPIMR1_OFFSET);

	FUNC2(kp->kpemr, kp->base + KPEMR0_OFFSET);
	FUNC2(kp->kpemr, kp->base + KPEMR1_OFFSET);
	FUNC2(kp->kpemr, kp->base + KPEMR2_OFFSET);
	FUNC2(kp->kpemr, kp->base + KPEMR3_OFFSET);

	FUNC2(0xFFFFFFFF, kp->base + KPICR0_OFFSET);
	FUNC2(0xFFFFFFFF, kp->base + KPICR1_OFFSET);

	kp->last_state[0] = FUNC1(kp->base + KPSSR0_OFFSET);
	kp->last_state[0] = FUNC1(kp->base + KPSSR1_OFFSET);

	FUNC2(kp->kpcr | KPCR_ENABLE, kp->base + KPCR_OFFSET);

	return 0;
}