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
struct msm_gem_object {char* name; } ;
struct drm_msm_gem_info {int info; int len; int /*<<< orphan*/  value; int /*<<< orphan*/  handle; scalar_t__ pad; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOENT ; 
#define  MSM_INFO_GET_IOVA 131 
#define  MSM_INFO_GET_NAME 130 
#define  MSM_INFO_GET_OFFSET 129 
#define  MSM_INFO_SET_NAME 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (struct drm_device*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*) ; 
 struct msm_gem_object* FUNC8 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct drm_msm_gem_info *args = data;
	struct drm_gem_object *obj;
	struct msm_gem_object *msm_obj;
	int i, ret = 0;

	if (args->pad)
		return -EINVAL;

	switch (args->info) {
	case MSM_INFO_GET_OFFSET:
	case MSM_INFO_GET_IOVA:
		/* value returned as immediate, not pointer, so len==0: */
		if (args->len)
			return -EINVAL;
		break;
	case MSM_INFO_SET_NAME:
	case MSM_INFO_GET_NAME:
		break;
	default:
		return -EINVAL;
	}

	obj = FUNC2(file, args->handle);
	if (!obj)
		return -ENOENT;

	msm_obj = FUNC8(obj);

	switch (args->info) {
	case MSM_INFO_GET_OFFSET:
		args->value = FUNC5(obj);
		break;
	case MSM_INFO_GET_IOVA:
		ret = FUNC6(dev, obj, &args->value);
		break;
	case MSM_INFO_SET_NAME:
		/* length check should leave room for terminating null: */
		if (args->len >= sizeof(msm_obj->name)) {
			ret = -EINVAL;
			break;
		}
		if (FUNC0(msm_obj->name, FUNC9(args->value),
				   args->len)) {
			msm_obj->name[0] = '\0';
			ret = -EFAULT;
			break;
		}
		msm_obj->name[args->len] = '\0';
		for (i = 0; i < args->len; i++) {
			if (!FUNC4(msm_obj->name[i])) {
				msm_obj->name[i] = '\0';
				break;
			}
		}
		break;
	case MSM_INFO_GET_NAME:
		if (args->value && (args->len < FUNC7(msm_obj->name))) {
			ret = -EINVAL;
			break;
		}
		args->len = FUNC7(msm_obj->name);
		if (args->value) {
			if (FUNC1(FUNC9(args->value),
					 msm_obj->name, args->len))
				ret = -EFAULT;
		}
		break;
	}

	FUNC3(obj);

	return ret;
}