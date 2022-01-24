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
struct nvkm_head_func {int dummy; } ;
struct nvkm_head {int id; int /*<<< orphan*/  head; struct nvkm_disp* disp; struct nvkm_head_func const* func; } ;
struct nvkm_disp {int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_head*,char*) ; 
 struct nvkm_head* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(const struct nvkm_head_func *func,
	       struct nvkm_disp *disp, int id)
{
	struct nvkm_head *head;
	if (!(head = FUNC1(sizeof(*head), GFP_KERNEL)))
		return -ENOMEM;
	head->func = func;
	head->disp = disp;
	head->id = id;
	FUNC2(&head->head, &disp->head);
	FUNC0(head, "ctor");
	return 0;
}