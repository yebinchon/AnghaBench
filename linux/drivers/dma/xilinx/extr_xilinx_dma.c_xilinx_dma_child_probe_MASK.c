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
struct xilinx_dma_device {int nr_channels; int /*<<< orphan*/  chan_id; int /*<<< orphan*/  dev; scalar_t__ mcdma; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_dma_device*,struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xilinx_dma_device *xdev,
				    struct device_node *node)
{
	int ret, i, nr_channels = 1;

	ret = FUNC1(node, "dma-channels", &nr_channels);
	if ((ret < 0) && xdev->mcdma)
		FUNC0(xdev->dev, "missing dma-channels property\n");

	for (i = 0; i < nr_channels; i++)
		FUNC2(xdev, node, xdev->chan_id++);

	xdev->nr_channels += nr_channels;

	return 0;
}