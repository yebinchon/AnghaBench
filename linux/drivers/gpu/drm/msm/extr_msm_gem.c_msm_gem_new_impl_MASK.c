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
struct drm_gem_object {int dummy; } ;
struct msm_gem_object {int flags; struct drm_gem_object base; int /*<<< orphan*/  mm_list; int /*<<< orphan*/  vmas; int /*<<< orphan*/  submit_entry; int /*<<< orphan*/  madv; int /*<<< orphan*/  lock; } ;
struct msm_drm_private {int /*<<< orphan*/  inactive_list; } ;
struct drm_device {int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  dev; struct msm_drm_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  MSM_BO_CACHED 130 
 int MSM_BO_CACHE_MASK ; 
#define  MSM_BO_UNCACHED 129 
#define  MSM_BO_WC 128 
 int /*<<< orphan*/  MSM_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct msm_gem_object* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev,
		uint32_t size, uint32_t flags,
		struct drm_gem_object **obj,
		bool struct_mutex_locked)
{
	struct msm_drm_private *priv = dev->dev_private;
	struct msm_gem_object *msm_obj;

	switch (flags & MSM_BO_CACHE_MASK) {
	case MSM_BO_UNCACHED:
	case MSM_BO_CACHED:
	case MSM_BO_WC:
		break;
	default:
		FUNC0(dev->dev, "invalid cache flag: %x\n",
				(flags & MSM_BO_CACHE_MASK));
		return -EINVAL;
	}

	msm_obj = FUNC3(sizeof(*msm_obj), GFP_KERNEL);
	if (!msm_obj)
		return -ENOMEM;

	FUNC5(&msm_obj->lock);

	msm_obj->flags = flags;
	msm_obj->madv = MSM_MADV_WILLNEED;

	FUNC1(&msm_obj->submit_entry);
	FUNC1(&msm_obj->vmas);

	if (struct_mutex_locked) {
		FUNC2(!FUNC6(&dev->struct_mutex));
		FUNC4(&msm_obj->mm_list, &priv->inactive_list);
	} else {
		FUNC7(&dev->struct_mutex);
		FUNC4(&msm_obj->mm_list, &priv->inactive_list);
		FUNC8(&dev->struct_mutex);
	}

	*obj = &msm_obj->base;

	return 0;
}