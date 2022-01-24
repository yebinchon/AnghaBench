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
struct dpu_encoder_irq {int irq_idx; int /*<<< orphan*/  hw_idx; int /*<<< orphan*/  cb; int /*<<< orphan*/  name; int /*<<< orphan*/  intr_type; } ;
typedef  enum dpu_intr_idx { ____Placeholder_dpu_intr_idx } dpu_intr_idx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_encoder_phys*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_encoder_phys*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int INTR_IDX_MAX ; 
 int FUNC5 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

int FUNC10(struct dpu_encoder_phys *phys_enc,
		enum dpu_intr_idx intr_idx)
{
	struct dpu_encoder_irq *irq;
	int ret = 0;

	if (!phys_enc || intr_idx >= INTR_IDX_MAX) {
		FUNC1("invalid params\n");
		return -EINVAL;
	}
	irq = &phys_enc->irq[intr_idx];

	if (irq->irq_idx >= 0) {
		FUNC0(phys_enc,
				"skipping already registered irq %s type %d\n",
				irq->name, irq->intr_type);
		return 0;
	}

	irq->irq_idx = FUNC6(phys_enc->dpu_kms,
			irq->intr_type, irq->hw_idx);
	if (irq->irq_idx < 0) {
		FUNC2(phys_enc,
			"failed to lookup IRQ index for %s type:%d\n",
			irq->name, irq->intr_type);
		return -EINVAL;
	}

	ret = FUNC7(phys_enc->dpu_kms, irq->irq_idx,
			&irq->cb);
	if (ret) {
		FUNC2(phys_enc,
			"failed to register IRQ callback for %s\n",
			irq->name);
		irq->irq_idx = -EINVAL;
		return ret;
	}

	ret = FUNC5(phys_enc->dpu_kms, &irq->irq_idx, 1);
	if (ret) {
		FUNC4("enable failed id=%u, intr=%d, hw=%d, irq=%d",
			  FUNC3(phys_enc->parent), intr_idx, irq->hw_idx,
			  irq->irq_idx);
		FUNC8(phys_enc->dpu_kms,
				irq->irq_idx, &irq->cb);
		irq->irq_idx = -EINVAL;
		return ret;
	}

	FUNC9(FUNC3(phys_enc->parent), intr_idx,
				irq->hw_idx, irq->irq_idx);

	return ret;
}