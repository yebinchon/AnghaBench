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
struct hfi1_ctxtdata {int /*<<< orphan*/ * rcvhdrtail_kvaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(const struct hfi1_ctxtdata *rcd)
{
	/*
	 * volatile because it's a DMA target from the chip, routine is
	 * inlined, and don't want register caching or reordering.
	 */
	return (u32)FUNC0(*rcd->rcvhdrtail_kvaddr);
}