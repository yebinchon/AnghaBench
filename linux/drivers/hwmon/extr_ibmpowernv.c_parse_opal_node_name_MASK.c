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
typedef  enum sensors { ____Placeholder_sensors } sensors ;

/* Variables and functions */
 int ENOENT ; 
 char const* FUNC0 (int) ; 
 int MAX_ATTR_LEN ; 
 char* FUNC1 (int,char*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static const char *FUNC3(const char *node_name,
					enum sensors type, u32 *index)
{
	char attr_suffix[MAX_ATTR_LEN];
	const char *attr_name;
	int err;

	err = FUNC2(node_name, index, attr_suffix);
	if (err)
		return FUNC0(err);

	attr_name = FUNC1(type, attr_suffix);
	if (!attr_name)
		return FUNC0(-ENOENT);

	return attr_name;
}