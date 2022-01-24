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
struct mtk_disp_mutex {int claimed; } ;
struct mtk_ddp {struct mtk_disp_mutex* mutex; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct mtk_disp_mutex* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_ddp* FUNC1 (struct device*) ; 

struct mtk_disp_mutex *FUNC2(struct device *dev, unsigned int id)
{
	struct mtk_ddp *ddp = FUNC1(dev);

	if (id >= 10)
		return FUNC0(-EINVAL);
	if (ddp->mutex[id].claimed)
		return FUNC0(-EBUSY);

	ddp->mutex[id].claimed = true;

	return &ddp->mutex[id];
}