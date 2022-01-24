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
struct ttm_object_file {int dummy; } ;
struct drm_vmw_context_arg {int /*<<< orphan*/  cid; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct ttm_object_file* tfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_REF_USAGE ; 
 int FUNC0 (struct ttm_object_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct drm_file*) ; 

int FUNC2(struct drm_device *dev, void *data,
			      struct drm_file *file_priv)
{
	struct drm_vmw_context_arg *arg = (struct drm_vmw_context_arg *)data;
	struct ttm_object_file *tfile = FUNC1(file_priv)->tfile;

	return FUNC0(tfile, arg->cid, TTM_REF_USAGE);
}