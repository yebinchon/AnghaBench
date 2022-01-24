#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct imx_i2c_struct {struct imx_i2c_dma* dma; } ;
struct imx_i2c_dma {int /*<<< orphan*/  cmd_complete; int /*<<< orphan*/  dma_data_dir; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_buf; TYPE_2__* chan_using; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
	struct imx_i2c_struct *i2c_imx = (struct imx_i2c_struct *)arg;
	struct imx_i2c_dma *dma = i2c_imx->dma;

	FUNC1(dma->chan_using->device->dev, dma->dma_buf,
			dma->dma_len, dma->dma_data_dir);
	FUNC0(&dma->cmd_complete);
}