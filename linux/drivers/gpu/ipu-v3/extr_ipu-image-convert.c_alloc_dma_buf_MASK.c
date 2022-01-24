#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_dma_buf {int /*<<< orphan*/  virt; int /*<<< orphan*/  phys; int /*<<< orphan*/  len; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(struct ipu_image_convert_priv *priv,
			 struct ipu_image_convert_dma_buf *buf,
			 int size)
{
	buf->len = FUNC0(size);
	buf->virt = FUNC2(priv->ipu->dev, buf->len, &buf->phys,
				       GFP_DMA | GFP_KERNEL);
	if (!buf->virt) {
		FUNC1(priv->ipu->dev, "failed to alloc dma buffer\n");
		return -ENOMEM;
	}

	return 0;
}