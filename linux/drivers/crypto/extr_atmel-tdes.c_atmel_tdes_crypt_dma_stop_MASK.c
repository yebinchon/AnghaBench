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
 int TDES_FLAGS_DMA ; 
 int TDES_FLAGS_FAST ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

__attribute__((used)) static int FUNC4(struct atmel_tdes_dev *dd)
{
	int err = -EINVAL;
	size_t count;

	if (dd->flags & TDES_FLAGS_DMA) {
		err = 0;
		if  (dd->flags & TDES_FLAGS_FAST) {
			FUNC2(dd->dev, dd->out_sg, 1, DMA_FROM_DEVICE);
			FUNC2(dd->dev, dd->in_sg, 1, DMA_TO_DEVICE);
		} else {
			FUNC1(dd->dev, dd->dma_addr_out,
				dd->dma_size, DMA_FROM_DEVICE);

			/* copy data */
			count = FUNC0(&dd->out_sg, &dd->out_offset,
				dd->buf_out, dd->buflen, dd->dma_size, 1);
			if (count != dd->dma_size) {
				err = -EINVAL;
				FUNC3("not all data converted: %zu\n", count);
			}
		}
	}
	return err;
}