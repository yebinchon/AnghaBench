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
typedef  int /*<<< orphan*/  u64 ;
struct ttm_mem_type_manager {int /*<<< orphan*/  size; struct amdgpu_gtt_mgr* priv; } ;
struct drm_printer {int dummy; } ;
struct amdgpu_gtt_mgr {int /*<<< orphan*/  available; int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int FUNC0 (struct ttm_mem_type_manager*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct drm_printer*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_printer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ttm_mem_type_manager *man,
				 struct drm_printer *printer)
{
	struct amdgpu_gtt_mgr *mgr = man->priv;

	FUNC4(&mgr->lock);
	FUNC2(&mgr->mm, printer);
	FUNC5(&mgr->lock);

	FUNC3(printer, "man size:%llu pages, gtt available:%lld pages, usage:%lluMB\n",
		   man->size, (u64)FUNC1(&mgr->available),
		   FUNC0(man) >> 20);
}