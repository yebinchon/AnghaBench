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
struct ttm_object_file {struct ttm_object_device* tdev; } ;
struct ttm_object_device {int /*<<< orphan*/  object_lock; int /*<<< orphan*/  idr; } ;
struct ttm_base_object {int shareable; void (* refcount_release ) (struct ttm_base_object**) ;void (* ref_obj_release ) (struct ttm_base_object*,int) ;int object_type; int handle; int /*<<< orphan*/  refcount; int /*<<< orphan*/  tfile; } ;
typedef  enum ttm_object_type { ____Placeholder_ttm_object_type } ttm_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  TTM_REF_USAGE ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ttm_base_object*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ttm_base_object**) ; 
 int /*<<< orphan*/  FUNC8 (struct ttm_object_file*) ; 
 int FUNC9 (struct ttm_object_file*,struct ttm_base_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int) ; 

int FUNC11(struct ttm_object_file *tfile,
			 struct ttm_base_object *base,
			 bool shareable,
			 enum ttm_object_type object_type,
			 void (*refcount_release) (struct ttm_base_object **),
			 void (*ref_obj_release) (struct ttm_base_object *,
						  enum ttm_ref_type ref_type))
{
	struct ttm_object_device *tdev = tfile->tdev;
	int ret;

	base->shareable = shareable;
	base->tfile = FUNC8(tfile);
	base->refcount_release = refcount_release;
	base->ref_obj_release = ref_obj_release;
	base->object_type = object_type;
	FUNC4(&base->refcount);
	FUNC1(GFP_KERNEL);
	FUNC5(&tdev->object_lock);
	ret = FUNC0(&tdev->idr, base, 1, 0, GFP_NOWAIT);
	FUNC6(&tdev->object_lock);
	FUNC2();
	if (ret < 0)
		return ret;

	base->handle = ret;
	ret = FUNC9(tfile, base, TTM_REF_USAGE, NULL, false);
	if (FUNC10(ret != 0))
		goto out_err1;

	FUNC7(&base);

	return 0;
out_err1:
	FUNC5(&tdev->object_lock);
	FUNC3(&tdev->idr, base->handle);
	FUNC6(&tdev->object_lock);
	return ret;
}