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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PREFIX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(char **name, int name_length)
{
#define PREFIX_LENGTH 9 /* "Logitech " */

	int new_length;
	char *new_name;

	if (name_length > PREFIX_LENGTH &&
	    FUNC3(*name, "Logitech ", PREFIX_LENGTH) == 0)
		/* The prefix has is already in the name */
		return;

	new_length = PREFIX_LENGTH + name_length;
	new_name = FUNC1(new_length, GFP_KERNEL);
	if (!new_name)
		return;

	FUNC2(new_name, new_length, "Logitech %s", *name);

	FUNC0(*name);

	*name = new_name;
}