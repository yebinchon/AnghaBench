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
typedef  int uint8_t ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int /*<<< orphan*/  reported_link_cap; int /*<<< orphan*/  verified_link_cap; } ;
typedef  enum dc_connection_type { ____Placeholder_dc_connection_type } dc_connection_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dc_link*,int*) ; 
 scalar_t__ FUNC1 (struct dc_link*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

bool FUNC4(
	struct dc_link *link,
	struct dc_link_settings *known_limit_link_setting,
	int attempts)
{
	uint8_t i = 0;
	bool success = false;

	for (i = 0; i < attempts; i++) {
		int fail_count = 0;
		enum dc_connection_type type;

		FUNC2(&link->verified_link_cap, 0,
				sizeof(struct dc_link_settings));
		if (!FUNC0(link, &type)) {
			break;
		} else if (FUNC1(link,
				&link->reported_link_cap,
				&fail_count) && fail_count == 0) {
			success = true;
			break;
		}
		FUNC3(10);
	}
	return success;
}