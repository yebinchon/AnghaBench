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
typedef  int /*<<< orphan*/  u16 ;
struct devx_obj {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(int num_events, u16 *event_type_num_list,
				   struct devx_obj *obj)
{
	int i;

	for (i = 0; i < num_events; i++) {
		if (obj) {
			if (!FUNC0(event_type_num_list[i]))
				return false;
		} else if (!FUNC1(
				event_type_num_list[i])) {
			return false;
		}
	}

	return true;
}