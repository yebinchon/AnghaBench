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
struct omap_des_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  total_save; int /*<<< orphan*/ * orig_out; int /*<<< orphan*/  out_sgl; int /*<<< orphan*/  in_sgl; int /*<<< orphan*/  out_sg_len; int /*<<< orphan*/  out_sg; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_sg_len; int /*<<< orphan*/  in_sg; int /*<<< orphan*/  pio_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FLAGS_IN_DATA_ST_SHIFT ; 
 int /*<<< orphan*/  FLAGS_OUT_DATA_ST_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_des_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_des_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct omap_des_dev *dd = (struct omap_des_dev *)data;

	FUNC5("enter done_task\n");

	if (!dd->pio_only) {
		FUNC0(dd->dev, dd->out_sg, dd->out_sg_len,
				       DMA_FROM_DEVICE);
		FUNC1(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
		FUNC1(dd->dev, dd->out_sg, dd->out_sg_len,
			     DMA_FROM_DEVICE);
		FUNC3(dd);
	}

	FUNC2(&dd->in_sgl, NULL, 0, dd->total_save,
			    FLAGS_IN_DATA_ST_SHIFT, dd->flags);

	FUNC2(&dd->out_sgl, dd->orig_out, 0, dd->total_save,
			    FLAGS_OUT_DATA_ST_SHIFT, dd->flags);

	FUNC4(dd, 0);

	FUNC5("exit\n");
}