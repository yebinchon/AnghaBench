#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_4__ {int /*<<< orphan*/  bits; } ;
struct TYPE_5__ {TYPE_1__ params; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct siw_cep {scalar_t__ state; int /*<<< orphan*/ * sock; TYPE_3__ mpa; } ;
struct iw_cm_id {scalar_t__ provider_data; } ;

/* Variables and functions */
 int ECONNRESET ; 
 scalar_t__ MPA_REVISION_1 ; 
 int /*<<< orphan*/  MPA_RR_FLAG_REJECT ; 
 scalar_t__ SIW_EPSTATE_CLOSED ; 
 scalar_t__ SIW_EPSTATE_RECVD_MPAREQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC2 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC3 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC4 (struct siw_cep*) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_cep*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_cep*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct iw_cm_id *id, const void *pdata, u8 pd_len)
{
	struct siw_cep *cep = (struct siw_cep *)id->provider_data;

	FUNC4(cep);
	FUNC2(cep);

	FUNC1(cep);

	if (cep->state != SIW_EPSTATE_RECVD_MPAREQ) {
		FUNC5(cep, "out of state\n");

		FUNC3(cep);
		FUNC2(cep); /* put last reference */

		return -ECONNRESET;
	}
	FUNC5(cep, "cep->state %d, pd_len %d\n", cep->state,
		    pd_len);

	if (FUNC0(cep->mpa.hdr.params.bits) >= MPA_REVISION_1) {
		cep->mpa.hdr.params.bits |= MPA_RR_FLAG_REJECT; /* reject */
		FUNC6(cep, pdata, pd_len);
	}
	FUNC7(cep->sock);
	FUNC8(cep->sock);
	cep->sock = NULL;

	cep->state = SIW_EPSTATE_CLOSED;

	FUNC3(cep);
	FUNC2(cep);

	return 0;
}