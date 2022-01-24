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
struct drm_private_state {int dummy; } ;
struct TYPE_2__ {struct drm_private_state obj; } ;
struct komeda_layer_state {TYPE_1__ base; } ;
struct drm_private_obj {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_private_obj*,struct drm_private_state*) ; 
 struct komeda_layer_state* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static struct drm_private_state *
FUNC3(struct drm_private_obj *obj)
{
	struct komeda_layer_state *st;

	st = FUNC1(obj->state, sizeof(*st), GFP_KERNEL);
	if (!st)
		return NULL;

	FUNC2(&st->base);
	FUNC0(obj, &st->base.obj);

	return &st->base.obj;
}