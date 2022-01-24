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
struct of_device_id {char const* compatible; } ;
struct i2c_client {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static const struct of_device_id*
FUNC2(const struct of_device_id *matches,
				  struct i2c_client *client)
{
	const char *name;

	for (; matches->compatible[0]; matches++) {
		/*
		 * Adding devices through the i2c sysfs interface provides us
		 * a string to match which may be compatible with the device
		 * tree compatible strings, however with no actual of_node the
		 * of_match_device() will not match
		 */
		if (FUNC1(client->name, matches->compatible))
			return matches;

		name = FUNC0(matches->compatible, ',');
		if (!name)
			name = matches->compatible;
		else
			name++;

		if (FUNC1(client->name, name))
			return matches;
	}

	return NULL;
}