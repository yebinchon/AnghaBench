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
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,unsigned int*) ; 
 unsigned int FUNC1 (struct device_node*) ; 
 unsigned int FUNC2 (struct device_node*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static bool FUNC4(struct device_node *np,
		int link, uint8_t id)
{
	unsigned int len, na, ns;
	const __be32 *prop;

	na = FUNC1(np);
	ns = FUNC2(np);

	/* Ensure we have the correct format for addresses and sizes in
	 * reg properties
	 */
	if (na != 2 || ns != 0)
		return false;

	prop = FUNC0(np, "reg", &len);
	if (!prop || len != 8)
		return false;

	return (FUNC3(prop, 1) == link) &&
		(FUNC3(prop + 1, 1) == id);
}