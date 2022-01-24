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
struct nouveau_framebuffer {TYPE_2__* nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ bo; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ *,unsigned int*) ; 
 struct nouveau_framebuffer* FUNC1 (struct drm_framebuffer*) ; 

__attribute__((used)) static int
FUNC2(struct drm_framebuffer *drm_fb,
				       struct drm_file *file_priv,
				       unsigned int *handle)
{
	struct nouveau_framebuffer *fb = FUNC1(drm_fb);

	return FUNC0(file_priv, &fb->nvbo->bo.base, handle);
}