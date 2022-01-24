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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct dca_provider {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_tag ) (struct dca_provider*,struct device*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct dca_provider* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  dca_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dca_provider*,struct device*,int) ; 

__attribute__((used)) static u8 FUNC4(struct device *dev, int cpu)
{
	struct dca_provider *dca;
	u8 tag;
	unsigned long flags;

	FUNC1(&dca_lock, flags);

	dca = FUNC0(dev);
	if (!dca) {
		FUNC2(&dca_lock, flags);
		return -ENODEV;
	}
	tag = dca->ops->get_tag(dca, dev, cpu);

	FUNC2(&dca_lock, flags);
	return tag;
}