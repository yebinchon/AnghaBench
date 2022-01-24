#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; TYPE_1__ dev; int /*<<< orphan*/  owner; int /*<<< orphan*/  class; int /*<<< orphan*/  algo; } ;
struct drm_dp_aux {TYPE_2__ ddc; int /*<<< orphan*/  dev; scalar_t__ name; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_CLASS_DDC ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_dp_aux*) ; 
 int FUNC2 (struct drm_dp_aux*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_dp_aux*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC6(struct drm_dp_aux *aux)
{
	int ret;

	if (!aux->ddc.algo)
		FUNC1(aux);

	aux->ddc.class = I2C_CLASS_DDC;
	aux->ddc.owner = THIS_MODULE;
	aux->ddc.dev.parent = aux->dev;

	FUNC5(aux->ddc.name, aux->name ? aux->name : FUNC0(aux->dev),
		sizeof(aux->ddc.name));

	ret = FUNC2(aux);
	if (ret)
		return ret;

	ret = FUNC4(&aux->ddc);
	if (ret) {
		FUNC3(aux);
		return ret;
	}

	return 0;
}