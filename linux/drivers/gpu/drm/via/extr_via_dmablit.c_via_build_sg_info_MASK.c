#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int /*<<< orphan*/  pdev; } ;
struct TYPE_11__ {int /*<<< orphan*/  state; int /*<<< orphan*/ * bounce_buffer; int /*<<< orphan*/  direction; } ;
typedef  TYPE_1__ drm_via_sg_info_t ;
struct TYPE_12__ {int to_fb; int num_lines; int line_length; int mem_stride; int fb_stride; scalar_t__ fb_addr; scalar_t__ mem_addr; } ;
typedef  TYPE_2__ drm_via_dmablit_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  dr_via_sg_init ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC6(struct drm_device *dev, drm_via_sg_info_t *vsg, drm_via_dmablit_t *xfer)
{
	int draw = xfer->to_fb;
	int ret = 0;

	vsg->direction = (draw) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
	vsg->bounce_buffer = NULL;

	vsg->state = dr_via_sg_init;

	if (xfer->num_lines <= 0 || xfer->line_length <= 0) {
		FUNC0("Zero size bitblt.\n");
		return -EINVAL;
	}

	/*
	 * Below check is a driver limitation, not a hardware one. We
	 * don't want to lock unused pages, and don't want to incoporate the
	 * extra logic of avoiding them. Make sure there are no.
	 * (Not a big limitation anyway.)
	 */

	if ((xfer->mem_stride - xfer->line_length) > 2*PAGE_SIZE) {
		FUNC0("Too large system memory stride. Stride: %d, "
			  "Length: %d\n", xfer->mem_stride, xfer->line_length);
		return -EINVAL;
	}

	if ((xfer->mem_stride == xfer->line_length) &&
	   (xfer->fb_stride == xfer->line_length)) {
		xfer->mem_stride *= xfer->num_lines;
		xfer->line_length = xfer->mem_stride;
		xfer->fb_stride = xfer->mem_stride;
		xfer->num_lines = 1;
	}

	/*
	 * Don't lock an arbitrary large number of pages, since that causes a
	 * DOS security hole.
	 */

	if (xfer->num_lines > 2048 || (xfer->num_lines*xfer->mem_stride > (2048*2048*4))) {
		FUNC0("Too large PCI DMA bitblt.\n");
		return -EINVAL;
	}

	/*
	 * we allow a negative fb stride to allow flipping of images in
	 * transfer.
	 */

	if (xfer->mem_stride < xfer->line_length ||
		FUNC1(xfer->fb_stride) < xfer->line_length) {
		FUNC0("Invalid frame-buffer / memory stride.\n");
		return -EINVAL;
	}

	/*
	 * A hardware bug seems to be worked around if system memory addresses start on
	 * 16 byte boundaries. This seems a bit restrictive however. VIA is contacted
	 * about this. Meanwhile, impose the following restrictions:
	 */

#ifdef VIA_BUGFREE
	if ((((unsigned long)xfer->mem_addr & 3) != ((unsigned long)xfer->fb_addr & 3)) ||
	    ((xfer->num_lines > 1) && ((xfer->mem_stride & 3) != (xfer->fb_stride & 3)))) {
		DRM_ERROR("Invalid DRM bitblt alignment.\n");
		return -EINVAL;
	}
#else
	if ((((unsigned long)xfer->mem_addr & 15) ||
	      ((unsigned long)xfer->fb_addr & 3)) ||
	   ((xfer->num_lines > 1) &&
	   ((xfer->mem_stride & 15) || (xfer->fb_stride & 3)))) {
		FUNC0("Invalid DRM bitblt alignment.\n");
		return -EINVAL;
	}
#endif

	if (0 != (ret = FUNC4(vsg, xfer))) {
		FUNC0("Could not lock DMA pages.\n");
		FUNC3(dev->pdev, vsg);
		return ret;
	}

	FUNC5(dev->pdev, xfer, vsg, 0);
	if (0 != (ret = FUNC2(vsg))) {
		FUNC0("Could not allocate DMA descriptor pages.\n");
		FUNC3(dev->pdev, vsg);
		return ret;
	}
	FUNC5(dev->pdev, xfer, vsg, 1);

	return 0;
}