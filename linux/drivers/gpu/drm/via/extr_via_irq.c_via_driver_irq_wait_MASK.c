#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
typedef  int* maskarray_t ;
struct TYPE_4__ {int* irq_map; int** irq_masks; TYPE_2__* via_irqs; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_5__ {int /*<<< orphan*/  irq_received; int /*<<< orphan*/  irq_queue; } ;
typedef  TYPE_2__ drm_via_irq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int drm_via_irq_num ; 
 int FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5(struct drm_device *dev, unsigned int irq, int force_sequence,
		    unsigned int *sequence)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
	unsigned int cur_irq_sequence;
	drm_via_irq_t *cur_irq;
	int ret = 0;
	maskarray_t *masks;
	int real_irq;

	FUNC0("\n");

	if (!dev_priv) {
		FUNC1("called with no initialization\n");
		return -EINVAL;
	}

	if (irq >= drm_via_irq_num) {
		FUNC1("Trying to wait on unknown irq %d\n", irq);
		return -EINVAL;
	}

	real_irq = dev_priv->irq_map[irq];

	if (real_irq < 0) {
		FUNC1("Video IRQ %d not available on this hardware.\n",
			  irq);
		return -EINVAL;
	}

	masks = dev_priv->irq_masks;
	cur_irq = dev_priv->via_irqs + real_irq;

	if (masks[real_irq][2] && !force_sequence) {
		FUNC2(ret, cur_irq->irq_queue, 3 * HZ,
			    ((FUNC4(dev_priv, masks[irq][2]) & masks[irq][3]) ==
			     masks[irq][4]));
		cur_irq_sequence = FUNC3(&cur_irq->irq_received);
	} else {
		FUNC2(ret, cur_irq->irq_queue, 3 * HZ,
			    (((cur_irq_sequence =
			       FUNC3(&cur_irq->irq_received)) -
			      *sequence) <= (1 << 23)));
	}
	*sequence = cur_irq_sequence;
	return ret;
}