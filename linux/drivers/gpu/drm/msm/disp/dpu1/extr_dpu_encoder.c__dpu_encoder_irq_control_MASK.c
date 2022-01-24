#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int num_phys_encs; struct dpu_encoder_phys** phys_encs; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* irq_control ) (struct dpu_encoder_phys*,int) ;} ;
struct dpu_encoder_phys {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_virt*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*,int) ; 
 struct dpu_encoder_virt* FUNC3 (struct drm_encoder*) ; 

__attribute__((used)) static void FUNC4(struct drm_encoder *drm_enc, bool enable)
{
	struct dpu_encoder_virt *dpu_enc;
	int i;

	if (!drm_enc) {
		FUNC1("invalid encoder\n");
		return;
	}

	dpu_enc = FUNC3(drm_enc);

	FUNC0(dpu_enc, "enable:%d\n", enable);
	for (i = 0; i < dpu_enc->num_phys_encs; i++) {
		struct dpu_encoder_phys *phys = dpu_enc->phys_encs[i];

		if (phys && phys->ops.irq_control)
			phys->ops.irq_control(phys, enable);
	}

}