#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dpu_encoder_phys {scalar_t__ enable_state; int /*<<< orphan*/  enc_spinlock; TYPE_2__* hw_intf; int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_timing ) (TYPE_2__*,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; scalar_t__ idx; } ;

/* Variables and functions */
 scalar_t__ DPU_ENC_ENABLED ; 
 scalar_t__ DPU_ENC_ENABLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTF_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(
		struct dpu_encoder_phys *phys_enc)
{
	unsigned long lock_flags;

	/*
	 * Video mode must flush CTL before enabling timing engine
	 * Video encoders need to turn on their interfaces now
	 */
	if (phys_enc->enable_state == DPU_ENC_ENABLING) {
		FUNC4(FUNC0(phys_enc->parent),
				    phys_enc->hw_intf->idx - INTF_0);
		FUNC1(phys_enc->enc_spinlock, lock_flags);
		phys_enc->hw_intf->ops.enable_timing(phys_enc->hw_intf, 1);
		FUNC2(phys_enc->enc_spinlock, lock_flags);
		phys_enc->enable_state = DPU_ENC_ENABLED;
	}
}