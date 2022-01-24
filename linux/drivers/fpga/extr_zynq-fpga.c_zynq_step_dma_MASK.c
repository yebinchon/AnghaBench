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
struct zynq_fpga_priv {scalar_t__ dma_elm; scalar_t__ dma_nelms; int /*<<< orphan*/ * cur_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEST_LEN_OFFSET ; 
 int /*<<< orphan*/  DMA_DST_ADDR_OFFSET ; 
 int DMA_INVALID_ADDRESS ; 
 int /*<<< orphan*/  DMA_SRC_ADDR_OFFSET ; 
 int DMA_SRC_LAST_TRANSFER ; 
 int /*<<< orphan*/  DMA_SRC_LEN_OFFSET ; 
 int IXR_DMA_DONE_MASK ; 
 int IXR_D_P_DONE_MASK ; 
 int IXR_ERROR_FLAGS_MASK ; 
 int STATUS_DMA_Q_F ; 
 int /*<<< orphan*/  STATUS_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct zynq_fpga_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zynq_fpga_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct zynq_fpga_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct zynq_fpga_priv *priv)
{
	u32 addr;
	u32 len;
	bool first;

	first = priv->dma_elm == 0;
	while (priv->cur_sg) {
		/* Feed the DMA queue until it is full. */
		if (FUNC3(priv, STATUS_OFFSET) & STATUS_DMA_Q_F)
			break;

		addr = FUNC0(priv->cur_sg);
		len = FUNC1(priv->cur_sg);
		if (priv->dma_elm + 1 == priv->dma_nelms) {
			/* The last transfer waits for the PCAP to finish too,
			 * notice this also changes the irq_mask to ignore
			 * IXR_DMA_DONE_MASK which ensures we do not trigger
			 * the completion too early.
			 */
			addr |= DMA_SRC_LAST_TRANSFER;
			priv->cur_sg = NULL;
		} else {
			priv->cur_sg = FUNC2(priv->cur_sg);
			priv->dma_elm++;
		}

		FUNC5(priv, DMA_SRC_ADDR_OFFSET, addr);
		FUNC5(priv, DMA_DST_ADDR_OFFSET, DMA_INVALID_ADDRESS);
		FUNC5(priv, DMA_SRC_LEN_OFFSET, len / 4);
		FUNC5(priv, DMA_DEST_LEN_OFFSET, 0);
	}

	/* Once the first transfer is queued we can turn on the ISR, future
	 * calls to zynq_step_dma will happen from the ISR context. The
	 * dma_lock spinlock guarentees this handover is done coherently, the
	 * ISR enable is put at the end to avoid another CPU spinning in the
	 * ISR on this lock.
	 */
	if (first && priv->cur_sg) {
		FUNC4(priv,
				  IXR_DMA_DONE_MASK | IXR_ERROR_FLAGS_MASK);
	} else if (!priv->cur_sg) {
		/* The last transfer changes to DMA & PCAP mode since we do
		 * not want to continue until everything has been flushed into
		 * the PCAP.
		 */
		FUNC4(priv,
				  IXR_D_P_DONE_MASK | IXR_ERROR_FLAGS_MASK);
	}
}