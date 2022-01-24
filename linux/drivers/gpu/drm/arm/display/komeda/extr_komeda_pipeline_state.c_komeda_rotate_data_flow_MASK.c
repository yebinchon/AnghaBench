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
struct komeda_data_flow_cfg {int /*<<< orphan*/  total_in_w; int /*<<< orphan*/  total_in_h; int /*<<< orphan*/  in_w; int /*<<< orphan*/  in_h; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct komeda_data_flow_cfg *dflow, u32 rot)
{
	if (FUNC0(rot)) {
		FUNC1(dflow->in_h, dflow->in_w);
		FUNC1(dflow->total_in_h, dflow->total_in_w);
	}
}