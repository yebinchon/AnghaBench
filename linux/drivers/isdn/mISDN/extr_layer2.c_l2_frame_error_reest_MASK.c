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
struct layer2 {int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;

	FUNC1(l2, MDL_ERROR_IND, arg);
	FUNC0(fi);
	FUNC2(FLG_L3_INIT, &l2->flag);
}