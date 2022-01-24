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
struct applesmc_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct applesmc_entry const*) ; 
 int FUNC1 (struct applesmc_entry const*) ; 
 struct applesmc_entry* FUNC2 (char const*) ; 
 int FUNC3 (struct applesmc_entry const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *key, u8 *buffer, u8 len)
{
	const struct applesmc_entry *entry;

	entry = FUNC2(key);
	if (FUNC0(entry))
		return FUNC1(entry);

	return FUNC3(entry, buffer, len);
}