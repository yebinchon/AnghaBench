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
struct omap_aes_dev {int /*<<< orphan*/  out_sg_len; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_sg_len; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  pio_only; int /*<<< orphan*/  total; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct omap_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int FUNC5(struct omap_aes_dev *dd)
{
	int err;

	FUNC4("total: %d\n", dd->total);

	if (!dd->pio_only) {
		err = FUNC1(dd->dev, dd->in_sg, dd->in_sg_len,
				 DMA_TO_DEVICE);
		if (!err) {
			FUNC0(dd->dev, "dma_map_sg() error\n");
			return -EINVAL;
		}

		err = FUNC1(dd->dev, dd->out_sg, dd->out_sg_len,
				 DMA_FROM_DEVICE);
		if (!err) {
			FUNC0(dd->dev, "dma_map_sg() error\n");
			return -EINVAL;
		}
	}

	err = FUNC3(dd, dd->in_sg, dd->out_sg, dd->in_sg_len,
				 dd->out_sg_len);
	if (err && !dd->pio_only) {
		FUNC2(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
		FUNC2(dd->dev, dd->out_sg, dd->out_sg_len,
			     DMA_FROM_DEVICE);
	}

	return err;
}