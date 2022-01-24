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
struct hibmc_framebuffer {int /*<<< orphan*/  obj; } ;
struct drm_framebuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hibmc_framebuffer*) ; 
 struct hibmc_framebuffer* FUNC3 (struct drm_framebuffer*) ; 

__attribute__((used)) static void FUNC4(struct drm_framebuffer *fb)
{
	struct hibmc_framebuffer *hibmc_fb = FUNC3(fb);

	FUNC1(hibmc_fb->obj);
	FUNC0(fb);
	FUNC2(hibmc_fb);
}