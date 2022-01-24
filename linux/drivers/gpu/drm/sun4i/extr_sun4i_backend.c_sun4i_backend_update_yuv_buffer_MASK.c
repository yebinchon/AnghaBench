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
struct TYPE_2__ {int /*<<< orphan*/  regs; } ;
struct sun4i_backend {TYPE_1__ engine; } ;
struct drm_framebuffer {int* pitches; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct sun4i_backend *backend,
					   struct drm_framebuffer *fb,
					   dma_addr_t paddr)
{
	/* TODO: Add support for the multi-planar YUV formats */
	FUNC0("Setting packed YUV buffer address to %pad\n", &paddr);
	FUNC3(backend->engine.regs, FUNC1(0), paddr);

	FUNC0("Layer line width: %d bits\n", fb->pitches[0] * 8);
	FUNC3(backend->engine.regs, FUNC2(0),
		     fb->pitches[0] * 8);

	return 0;
}