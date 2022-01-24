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
struct stm32f7_i2c_dev {struct stm32_i2c_dma* dma; } ;
struct stm32_i2c_dma {int /*<<< orphan*/  dma_complete; int /*<<< orphan*/  dma_data_dir; int /*<<< orphan*/  dma_len; int /*<<< orphan*/  dma_buf; TYPE_2__* chan_using; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stm32f7_i2c_dev*) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
	struct stm32f7_i2c_dev *i2c_dev = (struct stm32f7_i2c_dev *)arg;
	struct stm32_i2c_dma *dma = i2c_dev->dma;
	struct device *dev = dma->chan_using->device->dev;

	FUNC2(i2c_dev);
	FUNC1(dev, dma->dma_buf, dma->dma_len, dma->dma_data_dir);
	FUNC0(&dma->dma_complete);
}