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
struct layer2 {scalar_t__ rc; scalar_t__ N200; int /*<<< orphan*/  flag; int /*<<< orphan*/  T200; int /*<<< orphan*/  t200; scalar_t__ tm; int /*<<< orphan*/  i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  EV_L2_T200 ; 
 int /*<<< orphan*/  FLG_DCHAN_BUSY ; 
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  FLG_LAPD ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_T200_RUN ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  MDL_STATUS_DOWN_IND ; 
 int /*<<< orphan*/  PH_DEACTIVATE_REQ ; 
 int SABM ; 
 int SABME ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	if (FUNC10(FLG_LAPD, &l2->flag) &&
	    FUNC10(FLG_DCHAN_BUSY, &l2->flag)) {
		FUNC4(&l2->t200, l2->T200, EV_L2_T200, NULL, 9);
	} else if (l2->rc == l2->N200) {
		FUNC5(fi, ST_L2_4);
		FUNC9(FLG_T200_RUN, &l2->flag);
		FUNC7(&l2->i_queue);
		FUNC3(l2, MDL_ERROR_IND, (void *) 'G');
		if (FUNC10(FLG_LAPB, &l2->flag))
			FUNC2(l2, PH_DEACTIVATE_REQ,
				      FUNC0(l2), 0, NULL);
		FUNC8(l2);
		if (l2->tm)
			FUNC1(l2, MDL_STATUS_DOWN_IND, 0);
	} else {
		l2->rc++;
		FUNC4(&l2->t200, l2->T200, EV_L2_T200, NULL, 9);
		FUNC6(l2, NULL, (FUNC10(FLG_MOD128, &l2->flag) ?
				       SABME : SABM) | 0x10, CMD);
	}
}