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
struct atmel_tdes_dev {int flags; size_t dma_size; int /*<<< orphan*/  buflen; int /*<<< orphan*/  buf_out; int /*<<< orphan*/  out_offset; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  dma_addr_out; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int TDES_FLAGS_FAST ; 
 int /*<<< orphan*/  TDES_PTCR ; 
 int TDES_PTCR_RXTDIS ; 
 int TDES_PTCR_TXTDIS ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_tdes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

__attribute__((used)) static int FUNC5(struct atmel_tdes_dev *dd)
{
	int err = 0;
	size_t count;

	FUNC1(dd, TDES_PTCR, TDES_PTCR_TXTDIS|TDES_PTCR_RXTDIS);

	if (dd->flags & TDES_FLAGS_FAST) {
		FUNC3(dd->dev, dd->out_sg, 1, DMA_FROM_DEVICE);
		FUNC3(dd->dev, dd->in_sg, 1, DMA_TO_DEVICE);
	} else {
		FUNC2(dd->dev, dd->dma_addr_out,
					   dd->dma_size, DMA_FROM_DEVICE);

		/* copy data */
		count = FUNC0(&dd->out_sg, &dd->out_offset,
				dd->buf_out, dd->buflen, dd->dma_size, 1);
		if (count != dd->dma_size) {
			err = -EINVAL;
			FUNC4("not all data converted: %zu\n", count);
		}
	}

	return err;
}