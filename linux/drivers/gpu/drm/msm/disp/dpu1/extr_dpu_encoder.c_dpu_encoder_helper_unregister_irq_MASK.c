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
struct dpu_encoder_phys {int /*<<< orphan*/  parent; int /*<<< orphan*/  dpu_kms; struct dpu_encoder_irq* irq; } ;
struct dpu_encoder_irq {int irq_idx; int /*<<< orphan*/  hw_idx; int /*<<< orphan*/  cb; } ;
typedef  enum dpu_intr_idx { ____Placeholder_dpu_intr_idx } dpu_intr_idx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,...) ; 
 int EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct dpu_encoder_phys *phys_enc,
		enum dpu_intr_idx intr_idx)
{
	struct dpu_encoder_irq *irq;
	int ret;

	if (!phys_enc) {
		FUNC0("invalid encoder\n");
		return -EINVAL;
	}
	irq = &phys_enc->irq[intr_idx];

	/* silently skip irqs that weren't registered */
	if (irq->irq_idx < 0) {
		FUNC2("duplicate unregister id=%u, intr=%d, hw=%d, irq=%d",
			  FUNC1(phys_enc->parent), intr_idx, irq->hw_idx,
			  irq->irq_idx);
		return 0;
	}

	ret = FUNC3(phys_enc->dpu_kms, &irq->irq_idx, 1);
	if (ret) {
		FUNC2("disable failed id=%u, intr=%d, hw=%d, irq=%d ret=%d",
			  FUNC1(phys_enc->parent), intr_idx, irq->hw_idx,
			  irq->irq_idx, ret);
	}

	ret = FUNC4(phys_enc->dpu_kms, irq->irq_idx,
			&irq->cb);
	if (ret) {
		FUNC2("unreg cb fail id=%u, intr=%d, hw=%d, irq=%d ret=%d",
			  FUNC1(phys_enc->parent), intr_idx, irq->hw_idx,
			  irq->irq_idx, ret);
	}

	FUNC5(FUNC1(phys_enc->parent), intr_idx,
					     irq->hw_idx, irq->irq_idx);

	irq->irq_idx = -EINVAL;

	return 0;
}