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
struct nvkm_therm {TYPE_1__* func; int /*<<< orphan*/  subdev; int /*<<< orphan*/  clkgating_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* clkgate_fini ) (struct nvkm_therm*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*,int) ; 

void
FUNC2(struct nvkm_therm *therm, bool suspend)
{
	if (!therm || !therm->func->clkgate_fini || !therm->clkgating_enabled)
		return;

	FUNC0(&therm->subdev,
		   "Preparing clockgating for %s\n",
		   suspend ? "suspend" : "fini");
	therm->func->clkgate_fini(therm, suspend);
}