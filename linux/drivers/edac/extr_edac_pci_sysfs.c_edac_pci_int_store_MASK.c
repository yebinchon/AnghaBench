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
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(void *ptr, const char *buffer, size_t count)
{
	int *value = ptr;

	if (FUNC0(*buffer))
		*value = FUNC1(buffer, NULL, 0);

	return count;
}