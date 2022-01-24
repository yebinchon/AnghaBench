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
typedef  int /*<<< orphan*/  u32 ;
struct xa_limit {int dummy; } ;
struct siw_uobj {void* addr; int /*<<< orphan*/  size; } ;
struct siw_ucontext {int /*<<< orphan*/  uobj_nextkey; int /*<<< orphan*/  xa; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIW_INVAL_UOBJ_KEY ; 
 int /*<<< orphan*/  SIW_UOBJ_MAX_KEY ; 
 struct xa_limit FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_uobj*) ; 
 struct siw_uobj* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct siw_uobj*,struct xa_limit,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC5(struct siw_ucontext *uctx, void *vaddr, u32 size)
{
	struct siw_uobj *uobj;
	struct xa_limit limit = FUNC1(0, SIW_UOBJ_MAX_KEY);
	u32 key;

	uobj = FUNC3(sizeof(*uobj), GFP_KERNEL);
	if (!uobj)
		return SIW_INVAL_UOBJ_KEY;

	if (FUNC4(&uctx->xa, &key, uobj, limit, &uctx->uobj_nextkey,
			    GFP_KERNEL) < 0) {
		FUNC2(uobj);
		return SIW_INVAL_UOBJ_KEY;
	}
	uobj->size = FUNC0(size);
	uobj->addr = vaddr;

	return key;
}