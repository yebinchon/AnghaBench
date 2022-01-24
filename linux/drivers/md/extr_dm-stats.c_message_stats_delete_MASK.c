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
struct mapped_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,char*,int*,char*) ; 

__attribute__((used)) static int FUNC3(struct mapped_device *md,
				unsigned argc, char **argv)
{
	int id;
	char dummy;

	if (argc != 2)
		return -EINVAL;

	if (FUNC2(argv[1], "%d%c", &id, &dummy) != 1 || id < 0)
		return -EINVAL;

	return FUNC1(FUNC0(md), id);
}