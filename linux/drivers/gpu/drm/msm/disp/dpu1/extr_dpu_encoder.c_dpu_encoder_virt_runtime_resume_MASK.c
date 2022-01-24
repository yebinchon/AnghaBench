#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_encoder {int dummy; } ;
struct dpu_encoder_virt {int /*<<< orphan*/  enc_lock; TYPE_3__* cur_master; TYPE_4__* cur_slave; int /*<<< orphan*/  enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* restore ) (TYPE_4__*) ;} ;
struct TYPE_8__ {TYPE_1__ ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* restore ) (TYPE_3__*) ;} ;
struct TYPE_7__ {TYPE_2__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 struct dpu_encoder_virt* FUNC5 (struct drm_encoder*) ; 

void FUNC6(struct drm_encoder *drm_enc)
{
	struct dpu_encoder_virt *dpu_enc = FUNC5(drm_enc);

	FUNC1(&dpu_enc->enc_lock);

	if (!dpu_enc->enabled)
		goto out;

	if (dpu_enc->cur_slave && dpu_enc->cur_slave->ops.restore)
		dpu_enc->cur_slave->ops.restore(dpu_enc->cur_slave);
	if (dpu_enc->cur_master && dpu_enc->cur_master->ops.restore)
		dpu_enc->cur_master->ops.restore(dpu_enc->cur_master);

	FUNC0(drm_enc);

out:
	FUNC2(&dpu_enc->enc_lock);
}