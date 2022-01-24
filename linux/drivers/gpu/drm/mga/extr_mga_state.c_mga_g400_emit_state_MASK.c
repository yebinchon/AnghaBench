#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned int dirty; int warp_pipe; } ;
typedef  TYPE_1__ drm_mga_sarea_t ;
struct TYPE_9__ {int warp_pipe; TYPE_1__* sarea_priv; } ;
typedef  TYPE_2__ drm_mga_private_t ;

/* Variables and functions */
 int MGA_T2 ; 
 unsigned int MGA_UPLOAD_CONTEXT ; 
 unsigned int MGA_UPLOAD_TEX0 ; 
 unsigned int MGA_UPLOAD_TEX1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(drm_mga_private_t *dev_priv)
{
	drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
	unsigned int dirty = sarea_priv->dirty;
	int multitex = sarea_priv->warp_pipe & MGA_T2;

	if (sarea_priv->warp_pipe != dev_priv->warp_pipe) {
		FUNC1(dev_priv);
		dev_priv->warp_pipe = sarea_priv->warp_pipe;
	}

	if (dirty & MGA_UPLOAD_CONTEXT) {
		FUNC0(dev_priv);
		sarea_priv->dirty &= ~MGA_UPLOAD_CONTEXT;
	}

	if (dirty & MGA_UPLOAD_TEX0) {
		FUNC2(dev_priv);
		sarea_priv->dirty &= ~MGA_UPLOAD_TEX0;
	}

	if ((dirty & MGA_UPLOAD_TEX1) && multitex) {
		FUNC3(dev_priv);
		sarea_priv->dirty &= ~MGA_UPLOAD_TEX1;
	}
}