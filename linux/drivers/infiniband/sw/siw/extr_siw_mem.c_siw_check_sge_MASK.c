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
typedef  scalar_t__ u32 ;
struct siw_sge {scalar_t__ length; int lkey; scalar_t__ laddr; } ;
struct siw_mem {int stag; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_access_flags { ____Placeholder_ib_access_flags } ib_access_flags ;

/* Variables and functions */
 int E_ACCESS_OK ; 
 int E_BASE_BOUNDS ; 
 int E_STAG_INVALID ; 
 int FUNC0 (struct ib_pd*,struct siw_mem*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_mem*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_pd*,char*,int) ; 
 struct siw_mem* FUNC3 (struct siw_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_mem*) ; 
 struct siw_device* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ib_pd *pd, struct siw_sge *sge, struct siw_mem *mem[],
		  enum ib_access_flags perms, u32 off, int len)
{
	struct siw_device *sdev = FUNC5(pd->device);
	struct siw_mem *new = NULL;
	int rv = E_ACCESS_OK;

	if (len + off > sge->length) {
		rv = -E_BASE_BOUNDS;
		goto fail;
	}
	if (*mem == NULL) {
		new = FUNC3(sdev, sge->lkey >> 8);
		if (FUNC6(!new)) {
			FUNC2(pd, "STag unknown: 0x%08x\n", sge->lkey);
			rv = -E_STAG_INVALID;
			goto fail;
		}
		*mem = new;
	}
	/* Check if user re-registered with different STag key */
	if (FUNC6((*mem)->stag != sge->lkey)) {
		FUNC1((*mem), "STag mismatch: 0x%08x\n", sge->lkey);
		rv = -E_STAG_INVALID;
		goto fail;
	}
	rv = FUNC0(pd, *mem, sge->laddr + off, perms, len);
	if (FUNC6(rv))
		goto fail;

	return 0;

fail:
	if (new) {
		*mem = NULL;
		FUNC4(new);
	}
	return rv;
}