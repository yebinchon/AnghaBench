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
typedef  int u8 ;
struct rsm_map_table {scalar_t__ used; int /*<<< orphan*/  map; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct hfi1_devdata*) ; 
 struct rsm_map_table* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static struct rsm_map_table *FUNC3(struct hfi1_devdata *dd)
{
	struct rsm_map_table *rmt;
	u8 rxcontext = FUNC0(dd) ? 0 : 0xff;  /* 0 is default if a0 ver. */

	rmt = FUNC1(sizeof(*rmt), GFP_KERNEL);
	if (rmt) {
		FUNC2(rmt->map, rxcontext, sizeof(rmt->map));
		rmt->used = 0;
	}

	return rmt;
}