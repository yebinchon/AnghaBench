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
struct msm_gem_submit {unsigned int nr_bos; int /*<<< orphan*/  ticket; TYPE_1__* bos; } ;
struct msm_gem_object {int /*<<< orphan*/  base; int /*<<< orphan*/  submit_entry; } ;
struct TYPE_2__ {struct msm_gem_object* obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gem_submit*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct msm_gem_submit *submit)
{
	unsigned i;

	for (i = 0; i < submit->nr_bos; i++) {
		struct msm_gem_object *msm_obj = submit->bos[i].obj;
		FUNC2(submit, i, false);
		FUNC1(&msm_obj->submit_entry);
		FUNC0(&msm_obj->base);
	}

	FUNC3(&submit->ticket);
}