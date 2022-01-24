#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct amd_i2c_dev {TYPE_1__* pdev; } ;
struct amd_i2c_common {int /*<<< orphan*/  dma_buf; int /*<<< orphan*/  dma_addr; TYPE_4__* msg; TYPE_2__* mp2_dev; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_8__ {int flags; int /*<<< orphan*/  len; } ;
struct TYPE_7__ {struct device dev; } ;
struct TYPE_6__ {TYPE_3__* pci_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int EIO ; 
 int I2C_M_RD ; 
 struct amd_i2c_dev* FUNC0 (struct amd_i2c_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amd_i2c_common *i2c_common)
{
	struct device *dev_pci = &i2c_common->mp2_dev->pci_dev->dev;
	struct amd_i2c_dev *i2c_dev = FUNC0(i2c_common);
	enum dma_data_direction dma_direction =
			i2c_common->msg->flags & I2C_M_RD ?
			DMA_FROM_DEVICE : DMA_TO_DEVICE;

	i2c_common->dma_buf = FUNC4(i2c_common->msg, 0);
	i2c_common->dma_addr = FUNC2(dev_pci, i2c_common->dma_buf,
					      i2c_common->msg->len,
					      dma_direction);

	if (FUNC5(FUNC3(dev_pci, i2c_common->dma_addr))) {
		FUNC1(&i2c_dev->pdev->dev,
			"Error while mapping dma buffer %p\n",
			i2c_common->dma_buf);
		return -EIO;
	}

	return 0;
}