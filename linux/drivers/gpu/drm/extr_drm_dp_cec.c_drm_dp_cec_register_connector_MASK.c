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
struct TYPE_2__ {int adap; char const* name; int /*<<< orphan*/  unregister_work; struct device* parent; } ;
struct drm_dp_aux {TYPE_1__ cec; int /*<<< orphan*/  transfer; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  drm_dp_cec_unregister_work ; 

void FUNC2(struct drm_dp_aux *aux, const char *name,
				   struct device *parent)
{
	FUNC1(aux->cec.adap);
	if (FUNC1(!aux->transfer))
		return;
	aux->cec.name = name;
	aux->cec.parent = parent;
	FUNC0(&aux->cec.unregister_work,
			  drm_dp_cec_unregister_work);
}