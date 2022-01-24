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
struct vc4_dev {int /*<<< orphan*/  bo_lock; } ;
struct drm_vc4_label_bo {int /*<<< orphan*/  handle; scalar_t__ len; int /*<<< orphan*/  name; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct vc4_dev* FUNC9 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_gem_object*,int) ; 
 int FUNC12 (struct vc4_dev*,char*) ; 

int FUNC13(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	struct vc4_dev *vc4 = FUNC9(dev);
	struct drm_vc4_label_bo *args = data;
	char *name;
	struct drm_gem_object *gem_obj;
	int ret = 0, label;

	if (!args->len)
		return -EINVAL;

	name = FUNC8(FUNC10(args->name), args->len + 1);
	if (FUNC1(name))
		return FUNC2(name);

	gem_obj = FUNC3(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		FUNC5(name);
		return -ENOENT;
	}

	FUNC6(&vc4->bo_lock);
	label = FUNC12(vc4, name);
	if (label != -1)
		FUNC11(gem_obj, label);
	else
		ret = -ENOMEM;
	FUNC7(&vc4->bo_lock);

	FUNC4(gem_obj);

	return ret;
}