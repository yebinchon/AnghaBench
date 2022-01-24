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
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct drm_device*,struct dma_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 

struct drm_gem_object *FUNC2(struct drm_device *dev,
					    struct dma_buf *dma_buf)
{
	return FUNC0(dev, dma_buf, FUNC1(dev));
}