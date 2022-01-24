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
struct dc_link {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_MSTM_CTRL ; 
 unsigned char DP_MST_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dc_link*,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_link*,int /*<<< orphan*/ ,unsigned char*,int) ; 

void FUNC2(struct dc_link *link, bool enable)
{
	unsigned char mstmCntl;

	FUNC0(link, DP_MSTM_CTRL, &mstmCntl, 1);
	if (enable)
		mstmCntl |= DP_MST_EN;
	else
		mstmCntl &= (~DP_MST_EN);

	FUNC1(link, DP_MSTM_CTRL, &mstmCntl, 1);
}