#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  resv; } ;
struct ttm_buffer_object {TYPE_1__ base; } ;
struct TYPE_6__ {struct ttm_buffer_object base; } ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct vmw_user_buffer_object {TYPE_3__ vbo; TYPE_2__ prime; } ;
struct ttm_object_file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TTM_REF_SYNCCPU_WRITE ; 
 long FUNC0 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int drm_vmw_synccpu_allow_cs ; 
 int drm_vmw_synccpu_dontblock ; 
 int FUNC1 (struct ttm_buffer_object*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 
 int FUNC3 (struct ttm_object_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct vmw_user_buffer_object *user_bo,
				    struct ttm_object_file *tfile,
				    uint32_t flags)
{
	struct ttm_buffer_object *bo = &user_bo->vbo.base;
	bool existed;
	int ret;

	if (flags & drm_vmw_synccpu_allow_cs) {
		bool nonblock = !!(flags & drm_vmw_synccpu_dontblock);
		long lret;

		lret = FUNC0
			(bo->base.resv, true, true,
			 nonblock ? 0 : MAX_SCHEDULE_TIMEOUT);
		if (!lret)
			return -EBUSY;
		else if (lret < 0)
			return lret;
		return 0;
	}

	ret = FUNC1
		(bo, !!(flags & drm_vmw_synccpu_dontblock));
	if (FUNC4(ret != 0))
		return ret;

	ret = FUNC3(tfile, &user_bo->prime.base,
				 TTM_REF_SYNCCPU_WRITE, &existed, false);
	if (ret != 0 || existed)
		FUNC2(&user_bo->vbo.base);

	return ret;
}