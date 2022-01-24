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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct drm_encoder {TYPE_1__ base; } ;
struct dpu_rm {int /*<<< orphan*/  rm_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_rm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dpu_rm *rm, struct drm_encoder *enc)
{
	FUNC1(&rm->rm_lock);

	FUNC0(rm, enc->base.id);

	FUNC2(&rm->rm_lock);
}