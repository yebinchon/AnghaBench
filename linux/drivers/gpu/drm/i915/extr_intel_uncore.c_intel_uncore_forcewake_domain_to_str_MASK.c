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
typedef  enum forcewake_domain_id { ____Placeholder_forcewake_domain_id } forcewake_domain_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FW_DOMAIN_ID_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 char const** forcewake_domain_names ; 

const char *
FUNC3(const enum forcewake_domain_id id)
{
	FUNC1(FUNC0(forcewake_domain_names) != FW_DOMAIN_ID_COUNT);

	if (id >= 0 && id < FW_DOMAIN_ID_COUNT)
		return forcewake_domain_names[id];

	FUNC2(id);

	return "unknown";
}