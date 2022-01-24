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
struct drm_private_state {int dummy; } ;
struct komeda_pipeline_state {struct drm_private_state obj; scalar_t__ active_comps; } ;
struct drm_private_obj {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_private_obj*,struct drm_private_state*) ; 
 struct komeda_pipeline_state* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_private_state *
FUNC2(struct drm_private_obj *obj)
{
	struct komeda_pipeline_state *st;

	st = FUNC1(obj->state, sizeof(*st), GFP_KERNEL);
	if (!st)
		return NULL;

	st->active_comps = 0;

	FUNC0(obj, &st->obj);

	return &st->obj;
}