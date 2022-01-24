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
struct page {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*,struct page***,int) ; 

__attribute__((used)) static void FUNC2(struct dma_buf *buffer,
		unsigned long page_num, void *addr)
{
	struct drm_gem_object *obj = buffer->priv;
	struct page **pages;
	FUNC1(obj, &pages, false);
	FUNC0(pages[page_num]);
}