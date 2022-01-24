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
struct drm_dp_aux_dev {int /*<<< orphan*/  index; struct drm_dp_aux_dev* dev; } ;
struct drm_dp_aux {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_dp_aux_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_dp_aux_dev*) ; 
 struct drm_dp_aux_dev* FUNC4 (struct drm_dp_aux*) ; 
 struct drm_dp_aux_dev* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drm_dev_major ; 
 int /*<<< orphan*/  drm_dp_aux_dev_class ; 
 int /*<<< orphan*/  FUNC6 (struct drm_dp_aux*) ; 

int FUNC7(struct drm_dp_aux *aux)
{
	struct drm_dp_aux_dev *aux_dev;
	int res;

	aux_dev = FUNC4(aux);
	if (FUNC1(aux_dev))
		return FUNC3(aux_dev);

	aux_dev->dev = FUNC5(drm_dp_aux_dev_class, aux->dev,
				     FUNC2(drm_dev_major, aux_dev->index), NULL,
				     "drm_dp_aux%d", aux_dev->index);
	if (FUNC1(aux_dev->dev)) {
		res = FUNC3(aux_dev->dev);
		aux_dev->dev = NULL;
		goto error;
	}

	FUNC0("drm_dp_aux_dev: aux [%s] registered as minor %d\n",
		  aux->name, aux_dev->index);
	return 0;
error:
	FUNC6(aux);
	return res;
}