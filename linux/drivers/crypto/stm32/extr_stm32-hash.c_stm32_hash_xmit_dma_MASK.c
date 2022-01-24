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
typedef  int /*<<< orphan*/  u32 ;
struct stm32_hash_dev {int /*<<< orphan*/  dma_lch; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_completion; int /*<<< orphan*/  flags; } ;
struct scatterlist {int dummy; } ;
struct dma_async_tx_descriptor {struct stm32_hash_dev* callback_param; int /*<<< orphan*/  callback; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 scalar_t__ DMA_COMPLETE ; 
 int DMA_CTRL_ACK ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int DMA_PREP_INTERRUPT ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HASH_CR ; 
 int /*<<< orphan*/  HASH_CR_DMAE ; 
 int /*<<< orphan*/  HASH_CR_MDMAT ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_ACTIVE ; 
 int /*<<< orphan*/  HASH_FLAGS_FINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct dma_async_tx_descriptor* FUNC4 (int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_async_tx_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stm32_hash_dma_callback ; 
 int /*<<< orphan*/  FUNC9 (struct stm32_hash_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stm32_hash_dev*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct stm32_hash_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct stm32_hash_dev *hdev,
			       struct scatterlist *sg, int length, int mdma)
{
	struct dma_async_tx_descriptor *in_desc;
	dma_cookie_t cookie;
	u32 reg;
	int err;

	in_desc = FUNC4(hdev->dma_lch, sg, 1,
					  DMA_MEM_TO_DEV, DMA_PREP_INTERRUPT |
					  DMA_CTRL_ACK);
	if (!in_desc) {
		FUNC0(hdev->dev, "dmaengine_prep_slave error\n");
		return -ENOMEM;
	}

	FUNC8(&hdev->dma_completion);
	in_desc->callback = stm32_hash_dma_callback;
	in_desc->callback_param = hdev;

	hdev->flags |= HASH_FLAGS_FINAL;
	hdev->flags |= HASH_FLAGS_DMA_ACTIVE;

	reg = FUNC9(hdev, HASH_CR);

	if (mdma)
		reg |= HASH_CR_MDMAT;
	else
		reg &= ~HASH_CR_MDMAT;

	reg |= HASH_CR_DMAE;

	FUNC11(hdev, HASH_CR, reg);

	FUNC10(hdev, length);

	cookie = FUNC5(in_desc);
	err = FUNC3(cookie);
	if (err)
		return -ENOMEM;

	FUNC2(hdev->dma_lch);

	if (!FUNC12(&hdev->dma_completion,
					 FUNC7(100)))
		err = -ETIMEDOUT;

	if (FUNC1(hdev->dma_lch, cookie,
				     NULL, NULL) != DMA_COMPLETE)
		err = -ETIMEDOUT;

	if (err) {
		FUNC0(hdev->dev, "DMA Error %i\n", err);
		FUNC6(hdev->dma_lch);
		return err;
	}

	return -EINPROGRESS;
}