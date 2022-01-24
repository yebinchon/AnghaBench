#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct resource {unsigned long end; unsigned long start; } ;
struct TYPE_5__ {unsigned long size; scalar_t__ paddr; int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct msm_drm_private {TYPE_1__ vram; } ;
struct drm_device {TYPE_2__* dev; struct msm_drm_private* dev_private; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ; 
 unsigned long DMA_ATTR_WRITE_COMBINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long PAGE_SHIFT ; 
 void* FUNC3 (TYPE_2__*,unsigned long,scalar_t__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vram ; 

__attribute__((used)) static int FUNC11(struct drm_device *dev)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct device_node *node;
	unsigned long size = 0;
	int ret = 0;

	/* In the device-tree world, we could have a 'memory-region'
	 * phandle, which gives us a link to our "vram".  Allocating
	 * is all nicely abstracted behind the dma api, but we need
	 * to know the entire size to allocate it all in one go. There
	 * are two cases:
	 *  1) device with no IOMMU, in which case we need exclusive
	 *     access to a VRAM carveout big enough for all gpu
	 *     buffers
	 *  2) device with IOMMU, but where the bootloader puts up
	 *     a splash screen.  In this case, the VRAM carveout
	 *     need only be large enough for fbdev fb.  But we need
	 *     exclusive access to the buffer to avoid the kernel
	 *     using those pages for other purposes (which appears
	 *     as corruption on screen before we have a chance to
	 *     load and do initial modeset)
	 */

	node = FUNC9(dev->dev->of_node, "memory-region", 0);
	if (node) {
		struct resource r;
		ret = FUNC7(node, 0, &r);
		FUNC8(node);
		if (ret)
			return ret;
		size = r.end - r.start;
		FUNC2("using VRAM carveout: %lx@%pa\n", size, &r.start);

		/* if we have no IOMMU, then we need to use carveout allocator.
		 * Grab the entire CMA chunk carved out in early startup in
		 * mach-msm:
		 */
	} else if (!FUNC6(dev)) {
		FUNC2("using %s VRAM carveout\n", vram);
		size = FUNC5(vram, NULL);
	}

	if (size) {
		unsigned long attrs = 0;
		void *p;

		priv->vram.size = size;

		FUNC4(&priv->vram.mm, 0, (size >> PAGE_SHIFT) - 1);
		FUNC10(&priv->vram.lock);

		attrs |= DMA_ATTR_NO_KERNEL_MAPPING;
		attrs |= DMA_ATTR_WRITE_COMBINE;

		/* note that for no-kernel-mapping, the vaddr returned
		 * is bogus, but non-null if allocation succeeded:
		 */
		p = FUNC3(dev->dev, size,
				&priv->vram.paddr, GFP_KERNEL, attrs);
		if (!p) {
			FUNC0(dev->dev, "failed to allocate VRAM\n");
			priv->vram.paddr = 0;
			return -ENOMEM;
		}

		FUNC1(dev->dev, "VRAM: %08x->%08x\n",
				(uint32_t)priv->vram.paddr,
				(uint32_t)(priv->vram.paddr + size));
	}

	return ret;
}