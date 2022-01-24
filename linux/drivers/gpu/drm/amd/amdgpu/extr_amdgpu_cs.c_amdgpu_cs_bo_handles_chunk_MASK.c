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
struct drm_amdgpu_bo_list_in {int /*<<< orphan*/  bo_number; } ;
struct drm_amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_cs_parser {int /*<<< orphan*/  bo_list; int /*<<< orphan*/  filp; int /*<<< orphan*/  adev; } ;

/* Variables and functions */
 int FUNC0 (struct drm_amdgpu_bo_list_in*,struct drm_amdgpu_bo_list_entry**) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct drm_amdgpu_bo_list_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_amdgpu_bo_list_entry*) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_cs_parser *p,
				      struct drm_amdgpu_bo_list_in *data)
{
	int r;
	struct drm_amdgpu_bo_list_entry *info = NULL;

	r = FUNC0(data, &info);
	if (r)
		return r;

	r = FUNC1(p->adev, p->filp, info, data->bo_number,
				  &p->bo_list);
	if (r)
		goto error_free;

	FUNC2(info);
	return 0;

error_free:
	if (info)
		FUNC2(info);

	return r;
}