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
struct TYPE_2__ {int /*<<< orphan*/ * adap; int /*<<< orphan*/  unregister_work; } ;
struct drm_dp_aux {TYPE_1__ cec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct drm_dp_aux *aux)
{
	if (!aux->cec.adap)
		return;
	FUNC0(&aux->cec.unregister_work);
	FUNC1(aux->cec.adap);
	aux->cec.adap = NULL;
}