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
struct intel_frontbuffer {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {struct intel_frontbuffer* frontbuffer; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct drm_framebuffer*) ; 

__attribute__((used)) static struct intel_frontbuffer *
FUNC1(struct drm_framebuffer *fb)
{
	return fb ? FUNC0(fb)->frontbuffer : NULL;
}