#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dev; } ;
struct msm_gem_object {TYPE_3__* sgt; TYPE_2__ base; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_4__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARM64 ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct msm_gem_object *msm_obj)
{
	struct device *dev = msm_obj->base.dev->dev;

	if (FUNC3(dev) && FUNC0(CONFIG_ARM64)) {
		FUNC1(dev, msm_obj->sgt->sgl,
			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
	} else {
		FUNC2(dev, msm_obj->sgt->sgl,
			msm_obj->sgt->nents, DMA_BIDIRECTIONAL);
	}
}