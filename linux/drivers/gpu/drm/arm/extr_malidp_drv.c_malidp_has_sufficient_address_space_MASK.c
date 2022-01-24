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
struct resource {int dummy; } ;
struct of_device_id {int /*<<< orphan*/  compatible; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ MALIDP500_ADDR_SPACE_SIZE ; 
 scalar_t__ MALIDP550_ADDR_SPACE_SIZE ; 
 scalar_t__ FUNC0 (struct resource const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static bool FUNC2(const struct resource *res,
						const struct of_device_id *dev_id)
{
	resource_size_t res_size = FUNC0(res);
	const char *compatstr_dp500 = "arm,mali-dp500";

	if (!FUNC1(dev_id->compatible, compatstr_dp500,
		     sizeof(dev_id->compatible)))
		return res_size >= MALIDP550_ADDR_SPACE_SIZE;
	else if (res_size < MALIDP500_ADDR_SPACE_SIZE)
		return false;
	return true;
}