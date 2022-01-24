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
struct nvkm_timer {TYPE_1__* func; } ;
struct nvkm_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* time ) (struct nvkm_timer*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init ) (struct nvkm_timer*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvkm_timer* FUNC2 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_timer*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_timer*) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_timer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct nvkm_subdev *subdev)
{
	struct nvkm_timer *tmr = FUNC2(subdev);
	if (tmr->func->init)
		tmr->func->init(tmr);
	tmr->func->time(tmr, FUNC1(FUNC0()));
	FUNC3(tmr);
	return 0;
}