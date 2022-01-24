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
typedef  int u_char ;
struct layer2 {int /*<<< orphan*/  flag; int /*<<< orphan*/  t203; scalar_t__ rc; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_PEND_REL ; 
 int SABM ; 
 int SABME ; 
 int /*<<< orphan*/  ST_L2_5 ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct FsmInst *fi)
{
	struct layer2 *l2 = fi->userdata;
	u_char cmd;

	FUNC0(l2);
	l2->rc = 0;
	cmd = (FUNC7(FLG_MOD128, &l2->flag) ? SABME : SABM) | 0x10;
	FUNC5(l2, NULL, cmd, CMD);
	FUNC3(&l2->t203, 1);
	FUNC4(l2, 1);
	FUNC6(FLG_PEND_REL, &l2->flag);
	FUNC1(l2);
	FUNC2(fi, ST_L2_5);
}