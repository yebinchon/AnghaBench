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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sdma_engine {int dummy; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 struct sdma_engine* FUNC1 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct sdma_engine *FUNC2(
	struct hfi1_devdata *dd,
	u32 selector,
	u8 sc5)
{
	u8 vl = FUNC0(dd, sc5);

	return FUNC1(dd, selector, vl);
}