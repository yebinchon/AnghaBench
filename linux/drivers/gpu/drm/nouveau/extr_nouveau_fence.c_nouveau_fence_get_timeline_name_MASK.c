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
struct nouveau_fence_chan {char const* name; int /*<<< orphan*/  dead; } ;
struct nouveau_fence {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct nouveau_fence* FUNC0 (struct dma_fence*) ; 
 struct nouveau_fence_chan* FUNC1 (struct nouveau_fence*) ; 

__attribute__((used)) static const char *FUNC2(struct dma_fence *f)
{
	struct nouveau_fence *fence = FUNC0(f);
	struct nouveau_fence_chan *fctx = FUNC1(fence);

	return !fctx->dead ? fctx->name : "dead channel";
}