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
struct sti_tvout {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TVO_IN_FMT_SIGNED ; 
 int /*<<< orphan*/  FUNC0 (struct sti_tvout*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sti_tvout*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct sti_tvout *tvout,
		int reg, u32 in_vid_fmt)
{
	u32 val = FUNC0(tvout, reg);

	val &= ~TVO_IN_FMT_SIGNED;
	val |= in_vid_fmt;
	FUNC1(tvout, val, reg);
}