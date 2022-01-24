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
typedef  int u32 ;
struct zynq_fpga_priv {int /*<<< orphan*/  dma_done; int /*<<< orphan*/  dma_lock; scalar_t__ cur_sg; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_STS_OFFSET ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IXR_DMA_DONE_MASK ; 
 int IXR_ERROR_FLAGS_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct zynq_fpga_priv*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct zynq_fpga_priv *priv = data;
	u32 intr_status;

	/* If anything other than DMA completion is reported stop and hand
	 * control back to zynq_fpga_ops_write, something went wrong,
	 * otherwise progress the DMA.
	 */
	FUNC1(&priv->dma_lock);
	intr_status = FUNC3(priv, INT_STS_OFFSET);
	if (!(intr_status & IXR_ERROR_FLAGS_MASK) &&
	    (intr_status & IXR_DMA_DONE_MASK) && priv->cur_sg) {
		FUNC5(priv, INT_STS_OFFSET, IXR_DMA_DONE_MASK);
		FUNC6(priv);
		FUNC2(&priv->dma_lock);
		return IRQ_HANDLED;
	}
	FUNC2(&priv->dma_lock);

	FUNC4(priv, 0);
	FUNC0(&priv->dma_done);

	return IRQ_HANDLED;
}