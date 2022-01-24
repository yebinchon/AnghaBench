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
struct omap_des_dev {int /*<<< orphan*/  out_sg_len; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_sg_len; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  pio_only; int /*<<< orphan*/  total; int /*<<< orphan*/  req; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct crypto_tfm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct omap_des_dev *dd)
{
	struct crypto_tfm *tfm = FUNC1(
					FUNC0(dd->req));
	int err;

	FUNC6("total: %d\n", dd->total);

	if (!dd->pio_only) {
		err = FUNC3(dd->dev, dd->in_sg, dd->in_sg_len,
				 DMA_TO_DEVICE);
		if (!err) {
			FUNC2(dd->dev, "dma_map_sg() error\n");
			return -EINVAL;
		}

		err = FUNC3(dd->dev, dd->out_sg, dd->out_sg_len,
				 DMA_FROM_DEVICE);
		if (!err) {
			FUNC2(dd->dev, "dma_map_sg() error\n");
			return -EINVAL;
		}
	}

	err = FUNC5(tfm, dd->in_sg, dd->out_sg, dd->in_sg_len,
				 dd->out_sg_len);
	if (err && !dd->pio_only) {
		FUNC4(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
		FUNC4(dd->dev, dd->out_sg, dd->out_sg_len,
			     DMA_FROM_DEVICE);
	}

	return err;
}