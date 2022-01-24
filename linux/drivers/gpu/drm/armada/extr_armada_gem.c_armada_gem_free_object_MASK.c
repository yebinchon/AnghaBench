#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct drm_gem_object {TYPE_1__* dev; } ;
struct armada_private {int /*<<< orphan*/  linear_lock; } ;
struct TYPE_6__ {scalar_t__ import_attach; int /*<<< orphan*/  size; } ;
struct armada_gem_object {TYPE_2__ obj; scalar_t__ sgt; scalar_t__ addr; struct armada_gem_object* linear; scalar_t__ page; } ;
struct TYPE_5__ {struct armada_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct armada_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct armada_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct armada_gem_object* FUNC7 (struct drm_gem_object*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct armada_gem_object*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct drm_gem_object *obj)
{
	struct armada_gem_object *dobj = FUNC7(obj);
	struct armada_private *priv = obj->dev->dev_private;

	FUNC0("release obj %p\n", dobj);

	FUNC3(&dobj->obj);

	FUNC11(&priv->linear_lock);

	if (dobj->page) {
		/* page backed memory */
		unsigned int order = FUNC8(dobj->obj.size);
		FUNC1(dobj->page, order);
	} else if (dobj->linear) {
		/* linear backed memory */
		FUNC12(&priv->linear_lock);
		FUNC5(dobj->linear);
		FUNC13(&priv->linear_lock);
		FUNC10(dobj->linear);
		if (dobj->addr)
			FUNC9(dobj->addr);
	}

	if (dobj->obj.import_attach) {
		/* We only ever display imported data */
		if (dobj->sgt)
			FUNC2(dobj->obj.import_attach,
						 dobj->sgt, DMA_TO_DEVICE);
		FUNC6(&dobj->obj, NULL);
	}

	FUNC4(&dobj->obj);

	FUNC10(dobj);
}