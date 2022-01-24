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
struct sg_table {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct drm_i915_gem_object {int dummy; } ;
struct dma_buf_attachment {int /*<<< orphan*/  dev; int /*<<< orphan*/  dmabuf; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 struct drm_i915_gem_object* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct sg_table*) ; 

__attribute__((used)) static void FUNC5(struct dma_buf_attachment *attachment,
				   struct sg_table *sg,
				   enum dma_data_direction dir)
{
	struct drm_i915_gem_object *obj = FUNC0(attachment->dmabuf);

	FUNC1(attachment->dev, sg->sgl, sg->nents, dir);
	FUNC4(sg);
	FUNC3(sg);

	FUNC2(obj);
}