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
struct TYPE_4__ {unsigned int height; unsigned int* pitch; scalar_t__* offset; int /*<<< orphan*/ * gem_id; } ;
struct exynos_drm_ipp_buffer {scalar_t__* dma_addr; struct exynos_drm_gem** exynos_gem; TYPE_2__ buf; TYPE_1__* format; } ;
struct exynos_drm_gem {scalar_t__ size; scalar_t__ dma_addr; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {int num_planes; int /*<<< orphan*/  vsub; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct exynos_drm_gem* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_gem*) ; 

__attribute__((used)) static int FUNC3(struct exynos_drm_ipp_buffer *buf,
					    struct drm_file *filp)
{
	int ret = 0;
	int i;

	/* get GEM buffers and check their size */
	for (i = 0; i < buf->format->num_planes; i++) {
		unsigned int height = (i == 0) ? buf->buf.height :
			     FUNC0(buf->buf.height, buf->format->vsub);
		unsigned long size = height * buf->buf.pitch[i];
		struct exynos_drm_gem *gem = FUNC1(filp,
							    buf->buf.gem_id[i]);
		if (!gem) {
			ret = -ENOENT;
			goto gem_free;
		}
		buf->exynos_gem[i] = gem;

		if (size + buf->buf.offset[i] > buf->exynos_gem[i]->size) {
			i++;
			ret = -EINVAL;
			goto gem_free;
		}
		buf->dma_addr[i] = buf->exynos_gem[i]->dma_addr +
				   buf->buf.offset[i];
	}

	return 0;
gem_free:
	while (i--) {
		FUNC2(buf->exynos_gem[i]);
		buf->exynos_gem[i] = NULL;
	}
	return ret;
}