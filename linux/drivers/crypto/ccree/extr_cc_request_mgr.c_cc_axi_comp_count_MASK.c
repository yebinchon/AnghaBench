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
struct cc_drvdata {int /*<<< orphan*/  axim_mon_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AXIM_MON_COMP_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC2(struct cc_drvdata *drvdata)
{
	return FUNC0(AXIM_MON_COMP_VALUE,
			 FUNC1(drvdata, drvdata->axim_mon_offset));
}