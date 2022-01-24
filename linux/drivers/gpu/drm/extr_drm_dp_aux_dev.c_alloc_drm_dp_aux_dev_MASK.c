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
struct drm_dp_aux_dev {int index; int /*<<< orphan*/  refcount; int /*<<< orphan*/  usecount; struct drm_dp_aux* aux; } ;
struct drm_dp_aux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_AUX_MINORS ; 
 int ENOMEM ; 
 struct drm_dp_aux_dev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  aux_idr ; 
 int /*<<< orphan*/  aux_idr_mutex ; 
 int FUNC2 (int /*<<< orphan*/ *,struct drm_dp_aux_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_aux_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct drm_dp_aux_dev* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct drm_dp_aux_dev *FUNC8(struct drm_dp_aux *aux)
{
	struct drm_dp_aux_dev *aux_dev;
	int index;

	aux_dev = FUNC5(sizeof(*aux_dev), GFP_KERNEL);
	if (!aux_dev)
		return FUNC0(-ENOMEM);
	aux_dev->aux = aux;
	FUNC1(&aux_dev->usecount, 1);
	FUNC4(&aux_dev->refcount);

	FUNC6(&aux_idr_mutex);
	index = FUNC2(&aux_idr, aux_dev, 0, DRM_AUX_MINORS, GFP_KERNEL);
	FUNC7(&aux_idr_mutex);
	if (index < 0) {
		FUNC3(aux_dev);
		return FUNC0(index);
	}
	aux_dev->index = index;

	return aux_dev;
}