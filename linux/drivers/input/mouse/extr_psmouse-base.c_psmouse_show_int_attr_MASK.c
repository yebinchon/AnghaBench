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
struct psmouse {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 

__attribute__((used)) static ssize_t FUNC1(struct psmouse *psmouse, void *offset, char *buf)
{
	unsigned int *field = (unsigned int *)((char *)psmouse + (size_t)offset);

	return FUNC0(buf, "%u\n", *field);
}