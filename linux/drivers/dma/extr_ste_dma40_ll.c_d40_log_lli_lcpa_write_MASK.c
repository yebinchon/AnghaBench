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
struct d40_log_lli_full {int /*<<< orphan*/  lcsp3; int /*<<< orphan*/  lcsp2; int /*<<< orphan*/  lcsp1; int /*<<< orphan*/  lcsp0; } ;
struct d40_log_lli {int /*<<< orphan*/  lcsp13; int /*<<< orphan*/  lcsp02; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d40_log_lli*,struct d40_log_lli*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct d40_log_lli_full *lcpa,
			   struct d40_log_lli *lli_dst,
			   struct d40_log_lli *lli_src,
			   int next, unsigned int flags)
{
	FUNC0(lli_dst, lli_src, next, flags);

	FUNC1(lli_src->lcsp02, &lcpa[0].lcsp0);
	FUNC1(lli_src->lcsp13, &lcpa[0].lcsp1);
	FUNC1(lli_dst->lcsp02, &lcpa[0].lcsp2);
	FUNC1(lli_dst->lcsp13, &lcpa[0].lcsp3);
}