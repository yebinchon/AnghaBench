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
typedef  int uint32_t ;
struct drm_framebuffer {int dummy; } ;
struct udl_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int* pitches; int height; int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int size; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_framebuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct udl_framebuffer*) ; 
 struct udl_framebuffer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 
 int FUNC7 (struct drm_device*,struct udl_framebuffer*,struct drm_mode_fb_cmd2 const*,int /*<<< orphan*/ ) ; 

struct drm_framebuffer *
FUNC8(struct drm_device *dev,
		   struct drm_file *file,
		   const struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj;
	struct udl_framebuffer *ufb;
	int ret;
	uint32_t size;

	obj = FUNC3(file, mode_cmd->handles[0]);
	if (obj == NULL)
		return FUNC2(-ENOENT);

	size = mode_cmd->pitches[0] * mode_cmd->height;
	size = FUNC0(size, PAGE_SIZE);

	if (size > obj->size) {
		FUNC1("object size not sufficient for fb %d %zu %d %d\n", size, obj->size, mode_cmd->pitches[0], mode_cmd->height);
		return FUNC2(-ENOMEM);
	}

	ufb = FUNC5(sizeof(*ufb), GFP_KERNEL);
	if (ufb == NULL)
		return FUNC2(-ENOMEM);

	ret = FUNC7(dev, ufb, mode_cmd, FUNC6(obj));
	if (ret) {
		FUNC4(ufb);
		return FUNC2(-EINVAL);
	}
	return &ufb->base;
}