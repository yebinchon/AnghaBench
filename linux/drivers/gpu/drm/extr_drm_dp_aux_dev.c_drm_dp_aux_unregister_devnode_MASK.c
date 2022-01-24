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
struct drm_dp_aux_dev {unsigned int index; int /*<<< orphan*/  refcount; scalar_t__ dev; int /*<<< orphan*/  usecount; } ;
struct drm_dp_aux {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  aux_idr ; 
 int /*<<< orphan*/  aux_idr_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_dev_major ; 
 int /*<<< orphan*/  drm_dp_aux_dev_class ; 
 struct drm_dp_aux_dev* FUNC5 (struct drm_dp_aux*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release_drm_dp_aux_dev ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

void FUNC11(struct drm_dp_aux *aux)
{
	struct drm_dp_aux_dev *aux_dev;
	unsigned int minor;

	aux_dev = FUNC5(aux);
	if (!aux_dev) /* attach must have failed */
		return;

	FUNC8(&aux_idr_mutex);
	FUNC6(&aux_idr, aux_dev->index);
	FUNC9(&aux_idr_mutex);

	FUNC2(&aux_dev->usecount);
	FUNC10(&aux_dev->usecount, !FUNC3(&aux_dev->usecount));

	minor = aux_dev->index;
	if (aux_dev->dev)
		FUNC4(drm_dp_aux_dev_class,
			       FUNC1(drm_dev_major, minor));

	FUNC0("drm_dp_aux_dev: aux [%s] unregistering\n", aux->name);
	FUNC7(&aux_dev->refcount, release_drm_dp_aux_dev);
}