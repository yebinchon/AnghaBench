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
struct mpcc {int dummy; } ;
struct mpc {struct mpcc* mpcc_array; } ;
struct dcn10_mpc {int num_mpcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct dcn10_mpc* FUNC1 (struct mpc*) ; 

struct mpcc *FUNC2(struct mpc *mpc, int mpcc_id)
{
	struct dcn10_mpc *mpc10 = FUNC1(mpc);

	FUNC0(mpcc_id < mpc10->num_mpcc);
	return &(mpc->mpcc_array[mpcc_id]);
}