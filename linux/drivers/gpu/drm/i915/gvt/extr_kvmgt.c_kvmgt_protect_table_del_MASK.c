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
struct kvmgt_pgfn {int /*<<< orphan*/  hnode; } ;
struct kvmgt_guest_info {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 struct kvmgt_pgfn* FUNC0 (struct kvmgt_guest_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmgt_pgfn*) ; 

__attribute__((used)) static void FUNC3(struct kvmgt_guest_info *info,
				gfn_t gfn)
{
	struct kvmgt_pgfn *p;

	p = FUNC0(info, gfn);
	if (p) {
		FUNC1(&p->hnode);
		FUNC2(p);
	}
}