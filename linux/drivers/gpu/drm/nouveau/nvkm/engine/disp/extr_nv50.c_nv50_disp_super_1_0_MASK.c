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
struct nvkm_ior {int dummy; } ;
struct nvkm_head {int dummy; } ;
struct nv50_disp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_head*,struct nvkm_ior*,int) ; 
 struct nvkm_ior* FUNC2 (struct nvkm_head*) ; 

void
FUNC3(struct nv50_disp *disp, struct nvkm_head *head)
{
	struct nvkm_ior *ior;

	/* Determine which OR, if any, we're detaching from the head. */
	FUNC0(head, "supervisor 1.0");
	ior = FUNC2(head);
	if (!ior)
		return;

	/* Execute OffInt1 IED script. */
	FUNC1(head, ior, 1);
}