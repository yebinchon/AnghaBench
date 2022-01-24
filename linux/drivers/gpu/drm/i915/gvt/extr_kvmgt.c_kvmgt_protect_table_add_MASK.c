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
struct kvmgt_pgfn {int /*<<< orphan*/  hnode; int /*<<< orphan*/  gfn; } ;
struct kvmgt_guest_info {int /*<<< orphan*/  ptable; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kvmgt_guest_info*,int /*<<< orphan*/ ) ; 
 struct kvmgt_pgfn* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct kvmgt_guest_info *info, gfn_t gfn)
{
	struct kvmgt_pgfn *p;

	if (FUNC2(info, gfn))
		return;

	p = FUNC3(sizeof(struct kvmgt_pgfn), GFP_ATOMIC);
	if (FUNC0(!p, "gfn: 0x%llx\n", gfn))
		return;

	p->gfn = gfn;
	FUNC1(info->ptable, &p->hnode, gfn);
}